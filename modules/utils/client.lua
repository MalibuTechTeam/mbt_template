local Utils = {}

function Utils.MbtDebugger(...)
	if MBT.Debug then
		local arg = {...}
		local printResult = "["..GetCurrentResourceName().."] | " 
		for _,v in ipairs(arg) do
			printResult = printResult .. tostring(v) .. "\t"
		end
		printResult = printResult .. "\n"
		print(printResult)
	end
end


return Utils