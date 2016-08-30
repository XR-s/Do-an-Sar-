quest pythonsystem1 begin
	state start begin

		when login begin
			cmdchat("PythonToLua "..q.getcurrentquestindex())
		end

		when button begin
			local gelen = pythonsystem1.getinput("PYTHONISLEM")

			if gelen == "#hp_sp#" then
				local vid = pythonsystem1.getinput("PLAYER_VID")
				local old_pc = pc.select(vid)
				local hp = pc.get_hp()
				local max_hp = pc.get_max_hp()
				local mp = pc.get_sp()
				local max_mp = pc.get_max_sp()
				pc.select(old_pc)
				cmdchat("LuaToPython #rakip_hp_sp#|"..hp.."|"..max_hp.."|"..mp.."|"..max_mp)
			end


		end

		function getinput(gelen)
			local input1 = "#quest_input#"
			local input0 = "#quest_inputbitir#"
			cmdchat("LuaToPython "..input1)
			local al = input(cmdchat("PythonIslem "..gelen))
			cmdchat("LuaToPython "..input0)
			return al
		end

		function split(command_, ne)
			return pythonsystem1.split_(command_,ne)
		end
		
		function split_(string_,delimiter)
			local result = { }
			local from  = 1
			local delim_from, delim_to = string.find( string_, delimiter, from  )
			while delim_from do
				table.insert( result, string.sub( string_, from , delim_from-1 ) )
				from  = delim_to + 1
				delim_from, delim_to = string.find( string_, delimiter, from  )
			end
			table.insert( result, string.sub( string_, from  ) )
			return result
		end
	end
end