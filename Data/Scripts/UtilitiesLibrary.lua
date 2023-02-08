local UTIL = {}

function UTIL.UpdateTimeRemaining(timeInSeconds)
    local result = ""
    local hours = math.floor(timeInSeconds) // 3600 % 60
    local minutes = math.floor(timeInSeconds) // 60 % 60
    local seconds = math.floor(timeInSeconds) % 60
    if hours > 0 then
        result = string.format("%d hr %d min %d sec", hours, minutes, seconds)
    elseif hours == 0 and minutes > 0 then
        result = string.format("%d min %d sec", minutes, seconds)
    else
        result = string.format("%d sec", seconds)
    end
    return result
end

function UTIL.FormatMoney(amount)
    local formatted = amount
    while true do  
      formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)", '%1,%2')
      if (k==0) then
        break
      end
    end
    return formatted
end

function UTIL.SplitString(stringInfo, splitValue)
    local result = nil
    if stringInfo ~= "" then
        result = {CoreString.Split(stringInfo, "-")}
    end
    return result
end

function UTIL.RoundFloat(x)
    if x%2 >= 0.5 and x%2 < 1.0 then
        return math.ceil(x)
    elseif x%2 > 1.0 then
      local remaining = x%2 - 1.0
      if remaining >= 0.5 then
        return math.ceil(x)
      else
        return math.floor(x)
      end
    elseif x%2 == 1.0 then
      return math.ceil(x)
    else
        return math.floor(x)
    end
end

-- Convert from CSV string to table (converts a single line of a CSV file)
-- taken from http://lua-users.org/wiki/CsvUtils
function UTIL.ConvertCSVLineToTable (s)
    s = s .. ','        -- ending comma
    local t = {}        -- table to collect fields
    local fieldstart = 1
    repeat
      -- next field is quoted? (start with `"'?)
      if string.find(s, '^"', fieldstart) then
        local a, c
        local i  = fieldstart
        repeat
          -- find closing quote
          a, i, c = string.find(s, '"("?)', i+1)
        until c ~= '"'    -- quote not followed by quote?
        if not i then error('unmatched "') end
        local f = string.sub(s, fieldstart+1, i-1)
        table.insert(t, (string.gsub(f, '""', '"')))
        fieldstart = string.find(s, ',', i) + 1
      else                -- unquoted; find next comma
        local nexti = string.find(s, ',', fieldstart)
        table.insert(t, string.sub(s, fieldstart, nexti-1))
        fieldstart = nexti + 1
      end
    until fieldstart > string.len(s)
    return t
  end

return UTIL