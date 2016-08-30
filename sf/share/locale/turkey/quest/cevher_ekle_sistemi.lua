quest cevher_ekle begin
 	state start begin
		when 20001.chat."Cevher Nas�l Eklenir" begin
			say_reward("Merhaba. "..pc.name.."")
			say("Demeki itemlerine cevher eklemek istiyordun.")
			say("Asa��daki �temlere Tek Ekleyebilirm.")
			say("KOLYE , B�LEZ�K , K�PE , KEMER")
			say("Cevher eklemek istedi�in itemi �st�me s�r�klemen yeterli.")
			say("")
			end
		when 20001.take with item.vnum >= 14000 and item.vnum <= 14579 or item.vnum >= 16000 and item.vnum <= 17569 or item.vnum >= 18000 and item.vnum <= 18099 begin
			if(pc.get_level() < 30) then
				say("�ncelikle hen�z bir �aylaks�n ve hi�bir �ey.")
				say("bilmiyorsun. Git ve bir �eyler ��ren!.")
				say("30 Lvl Ol.")
				return
			elseif pc.is_polymorphed() then
				say("")
				say("D�n���m Halindeyken Cevher Eklenemez.")
				say("")
				return
			end
			local cost
			if(pc.get_level() > 30) then
				cost = 1000000 + pc.level * 5000
			else
				cost = 1000000 + pc.level * 5000
			end
			if item.get_socket(0) == 1 then
				chat("Bu Nesnede Cevherler Ekli!")
else
			if item.get_socket(0) == 2 then
				chat("Bu Nesnede Cevherler Ekli!")
else
			if item.get_socket(0) == 3 then
				chat("Bu Nesnede Cevherler Ekli!")
			else
			if(pc.money < cost) then
				say_title(mob_name(npc.get_race())..".")
				say("")
				---
				say("Yeterli yang'a sahip de�ilsin.")
				say("Yang olmadan sana yard�m edemem,")
				say("Ya�amak i�in bir �eyler yapmam gerekiyor.")
				say_reward("Fiyat : "..cost.." Yang.")
				return
			end
				local itemName, itemCount = item.get_name(), item.get_count()
				chat("" ..itemName .." 'a Cevherler Basar�yla  Eklendi.")
				chat("Fiyat : "..cost.." Yang.")
				pc.change_gold(-cost)
				item.set_socket(1, 21600)
				item.set_socket(2, 21600)
				item.set_socket(3, 21600)
				item.set_socket(0, 1)
				item.set_socket(0, 2)
				item.set_socket(0, 3)

			end
		end
		end
		end
		end
        end