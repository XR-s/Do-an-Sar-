quest Vectors_kill_sounds begin
	state start begin
		when kill with npc.is_pc() begin
		if get_time()< pc.getqf("grupo") then 
			pc.delqf("grupo")
			pc.setqf("doble", get_time()+10)
			cmdchat("Vectors doublekill.mp3")
		elseif get_time()< pc.getqf("doble") then 
			pc.delqf("doble") 
			pc.setqf("triple", get_time()+10)
			cmdchat("Vectors triplekill.mp3")
		elseif get_time()< pc.getqf("triple") then
			pc.delqf("triple") 
			pc.setqf("quadra", get_time()+10)
			cmdchat("Vectors quadra.mp3")
		elseif get_time()< pc.getqf("quadra") then
			pc.delqf("quadra") 
			pc.setqf("pentakill", get_time()+10)
			cmdchat("Vectors pentakill.mp3")
		elseif get_time()< pc.getqf("pentakill") then
			pc.delqf("pentakill")
			pc.setqf("hexakill", get_time()+10)
			cmdchat("Vectors hexakill.mp3")
		elseif get_time()< pc.getqf("hexakill") then
			pc.delqf("hexakill") 
			pc.setqf("hexakill", get_time()+10)
			cmdchat("Vectors hexakill.mp3")
		else
			pc.setqf("grupo", get_time()+10)
			cmdchat("Vectors onekill.mp3")
			end
		end
	end
end