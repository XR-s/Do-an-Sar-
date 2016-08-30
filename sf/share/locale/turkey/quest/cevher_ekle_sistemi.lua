quest cevher_ekle begin
 	state start begin
		when 20001.chat."Cevher Nasıl Eklenir" begin
			say_reward("Merhaba. "..pc.name.."")
			say("Demeki itemlerine cevher eklemek istiyordun.")
			say("Asağıdaki İtemlere Tek Ekleyebilirm.")
			say("KOLYE , BİLEZİK , KÜPE , KEMER")
			say("Cevher eklemek istediğin itemi üstüme sürüklemen yeterli.")
			say("")
			end
		when 20001.take with item.vnum >= 14000 and item.vnum <= 14579 or item.vnum >= 16000 and item.vnum <= 17569 or item.vnum >= 18000 and item.vnum <= 18099 begin
			if(pc.get_level() < 30) then
				say("Öncelikle henüz bir çaylaksın ve hiçbir şey.")
				say("bilmiyorsun. Git ve bir şeyler öğren!.")
				say("30 Lvl Ol.")
				return
			elseif pc.is_polymorphed() then
				say("")
				say("Dönüşüm Halindeyken Cevher Eklenemez.")
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
				say("Yeterli yang'a sahip değilsin.")
				say("Yang olmadan sana yardım edemem,")
				say("Yaşamak için bir şeyler yapmam gerekiyor.")
				say_reward("Fiyat : "..cost.." Yang.")
				return
			end
				local itemName, itemCount = item.get_name(), item.get_count()
				chat("" ..itemName .." 'a Cevherler Basarıyla  Eklendi.")
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