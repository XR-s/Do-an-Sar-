quest efsun begin
	state start begin
		when 20406.chat."Efsunlu Orman " begin
			if pc . level < 120 then
			say_reward("")
			say("Uzgunum "..pc.get_name()..".")
			say("Seviyen yeterli değil!")
			say("95.Seviyeye ulasman gerekiyor.")
			return
			end
			
			say_reward("")
            say("Merhaba "..pc.get_name()..".")
			say("Efsunlu Ormana gitmek istiyor musun?")
			local item = select("Evet", "Hayir")
			if item == 2 then
			elseif item == 1 then
			----- Esya Kontrol Ediyorum... -----
			if pc.count_item(27991)<50 then
			say_reward("")
			say("Uzgunum "..pc.get_name()..".")
			say("Yeterli esyaya sahip degilsin.")
			say("50 adet Su Tası gerekiyor.")
			say("")
			else
			pc.warp(808700,1447100)
			pc.remove_item("27991",50)
			end
			end
		end
	end
end