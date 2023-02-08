local packLib = {}
packLib.__index = packLib
local INT_SIZE = 31
packLib.INT_SIZE = INT_SIZE

local function tobinary(x)
	val = ""
	while x > 0 do
		val = tostring(x%2) .. val
		x = math.modf(x/2)
	end
	val = tostring(x).. val
	return val
end

function packLib:SetBit(i, val)
    if i == 0 then error("cannot set 0th bit") return end
    if i > self.n then error("cannot set bit greater than max bit num. Max bits: " .. tostring(self.n) .. " Attempted bit: " .. tostring(i)) return end

    local packedNum = 0
    local segment = math.ceil(i/self.INT_SIZE)

    if not self.tbl[segment] then
        self.tbl[segment] = 0
    end
    local currentVal = self.tbl[segment]
    local binVal = string.reverse(tobinary(currentVal))

    -- bit to set in segment
    local bitToSet = i % self.INT_SIZE
    if bitToSet == 0 then
        bitToSet = self.INT_SIZE
    end
    local newBinVal = ""
    for j = self.INT_SIZE, 1, -1 do
        local iBit = string.sub(binVal, j,j)
        if j ~= bitToSet then
            if iBit == "" then
                iBit = "0"
            end
        else
            iBit = tostring(val)
        end

        newBinVal = newBinVal .. tostring(iBit)
    end
    packedNum = math.abs(tonumber(newBinVal,2))

    self.tbl[segment] = math.abs(packedNum)
end

function packLib:Reset()
    for i = 1, self.n, 1 do
        self:SetBit(i, 0)
    end
end

function packLib:IsBitSet(i)
    if i == 0 then return end
    local segment = math.ceil(i/self.INT_SIZE)

    if not self.tbl[segment] then
        return false
    end

    local currentVal = self.tbl[segment]
    local binVal = string.reverse(tobinary(currentVal))
    -- find bit in segment
    local bitToCheck = i % self.INT_SIZE
    if bitToCheck == 0 then
        bitToCheck = self.INT_SIZE
    end

    if string.sub(binVal, bitToCheck, bitToCheck) == "1" then
        return true
    end

    return false
end

function packLib:GetPackedString(inTbl)
    if not inTbl then inTbl = self.tbl end
    local res = ""
    for k, v in ipairs(inTbl) do
        res = res .. tostring(v) .. ","
    end
    return res:sub(1,-2)
end

function packLib:UpackString(str)
    for num in str:gmatch("%d+") do
        table.insert(self.tbl, tonumber(num))
    end
end

function packLib:GetPackedNumbers()
    return self.tbl
end

function packLib:GetSegment(i)
    return math.ceil(i/self.INT_SIZE)
end

function packLib:GetBinaryString()
    local res = ""
    for k, v in ipairs(self.tbl) do
        res = res .. tobinary(v)
    end
    return res
end

packLib.new = function(maxBits, str, intSize)
    local o = {}
    setmetatable(o, packLib)
    o.n = maxBits
    if intSize then
        o.INT_SIZE = intSize
    else
        o.INT_SIZE = INT_SIZE
    end
    o.NUM_PACKED_INTS = math.ceil(maxBits/o.INT_SIZE)
    o.tbl = {}
    if not str then
        o:Reset()
    else
        o:UpackString(str)
    end
    return o
end

return packLib