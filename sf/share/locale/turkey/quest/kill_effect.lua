quest kill_effect begin
	state start begin
		when kill with npc.is_pc() begin
			cmdchat("mattius")
		end
	end
end