--[[
Copyright 2019 Manticore Games, Inc.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]

local API = {}

function API.RegisterResourceManager(functionTable)
	if _G.APIResources then
		error("A game cannot have resource managers.")
    end
    _G.APIResources = functionTable
end

function API.GetResourceInfo(resource)
	if not _G.APIResources then
		warn("Cannot get the resource icon without resource manager registered.")
		return nil
	end

	return _G.APIResources.GetResourceInfo(resource)
end

function API.ClearResources(player)
	if not _G.APIResources then
		warn("No resource manager found.")
		return nil
	end

	return _G.APIResources.ClearResources(player)
end

return API