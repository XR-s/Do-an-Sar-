quest gemimap begin
	state start begin
		when 11001.chat."Gemi Sava�lar�na Kat�l" with game.get_event_flag("girisleracik") == 1 begin
		if pc.get_level() >= 65 then
			if pc.get_empire() == 1 then
				pc.warp(525500,5400)
			elseif pc.get_empire() == 2 then
				pc.warp(517400,13700)
			elseif pc.get_empire() == 3 then
				pc.warp(516800,35600)
		    end
			else
			say("Levelin +65 olmal� ")
			end
		end

		when 11003.chat."Gemi Sava�lar�na Kat�l" with game.get_event_flag("girisleracik") == 1 begin
		if pc.get_level() >= 65 then
			if pc.get_empire() == 1 then
				pc.warp(525500,5400)
			elseif pc.get_empire() == 2 then
				pc.warp(517400,13700)
			elseif pc.get_empire() == 3 then
				pc.warp(516800,35600)
		    end
			else
			say("Levelin +65 olmal� ")
			end
		end

		when 11005.chat."Gemi Sava�lar�na Kat�l" with game.get_event_flag("girisleracik") == 1 begin
		if pc.get_level() >= 65 then
			if pc.get_empire() == 1 then
				pc.warp(525500,5400)
			elseif pc.get_empire() == 2 then
				pc.warp(517400,13700)
			elseif pc.get_empire() == 3 then
				pc.warp(516800,35600)
		    end
			else
			say("Levelin +65 olmal� ")
			end
		end

		when login with pc.get_map_index() == 356 and game.get_event_flag("girisleracik") == 0 and not pc.is_gm() begin
			warp_to_village()
		end

		when 11001.chat."Gemi Sava�lar�n� A� " with pc.is_gm() begin
			local a = select("Evet ", "Hay�r ", "Puanlar� s�f�rla ", "Pencereyi kapat ")
			if a == 1 then
				notice_all("Gemi Sava�lar� ba�lad�. ")
				notice_all("Sava� sorumlusundan kat�labilirsiniz. ")
				game.set_event_flag("girisleracik", 1)
			elseif a == 2 then
				notice_all("Gemi Sava�lar� bitti. ")
				game.set_event_flag("girisleracik", 0)
				game.set_event_flag("netmarlis1", 0)
				game.set_event_flag("netmarlis2", 0)
				game.set_event_flag("netmarlis3", 0)
				warp_all_to_village(356)
			elseif a == 3 then
				game.set_event_flag("netmarlis1", 0)
				game.set_event_flag("netmarlis2", 0)
				game.set_event_flag("netmarlis3", 0)
			elseif a == 4 then
				return
			end
		end
		when 11003.chat."Gemi Sava�lar�n� A� " with pc.is_gm() begin
			local a = select("Evet ", "Hay�r ", "Puanlar� s�f�rla ", "Pencereyi kapat ")
			if a == 1 then
				notice_all("Gemi Sava�lar� ba�lad�. ")
				notice_all("Sava� sorumlusundan kat�labilirsiniz. ")
				game.set_event_flag("girisleracik", 1)
			elseif a == 2 then
				notice_all("Gemi Sava�lar� bitti. ")
				game.set_event_flag("girisleracik", 0)
				game.set_event_flag("netmarlis1", 0)
				game.set_event_flag("netmarlis2", 0)
				game.set_event_flag("netmarlis3", 0)
				warp_all_to_village(356)
			elseif a == 3 then
				game.set_event_flag("netmarlis1", 0)
				game.set_event_flag("netmarlis2", 0)
				game.set_event_flag("netmarlis3", 0)
			elseif a == 4 then
				return
			end
		end
		when 11005.chat."Gemi Sava�lar�n� A� " with pc.is_gm() begin
			local a = select("Evet ", "Hay�r ", "Puanlar� s�f�rla ", "Pencereyi kapat ")
			if a == 1 then
				notice_all("Gemi Sava�lar� ba�lad�. ")
				notice_all("Sava� sorumlusundan kat�labilirsiniz. ")
				game.set_event_flag("girisleracik", 1)
			elseif a == 2 then
				notice_all("Gemi Sava�lar� bitti. ")
				game.set_event_flag("girisleracik", 0)
				game.set_event_flag("netmarlis1", 0)
				game.set_event_flag("netmarlis2", 0)
				game.set_event_flag("netmarlis3", 0)
				warp_all_to_village(356)
			elseif a == 3 then
				game.set_event_flag("netmarlis1", 0)
				game.set_event_flag("netmarlis2", 0)
				game.set_event_flag("netmarlis3", 0)
			elseif a == 4 then
				return
			end
		end

		when kill with npc.is_pc() and npc.empire != pc.empire and pc.get_map_index() == 356 begin
			local as = game.get_event_flag("netmarlis"..pc.empire.."")
			if game.get_event_flag("netmarlis1")+1 >= 500 then
				notice_all("Gemi Sava�lar� bitti. ")
				notice_all("Gemi Sava�lar�n� kazanan K�rm�z� bayrak ")
				notice_in_map("1 dakika i�erisinde herkes �ehre g�nderilicek. ", pc.get_map_index())
				game.set_event_flag("netmarlis1",0)
				game.set_event_flag("netmarlis2",0)
				game.set_event_flag("netmarlis3",0)
				game.set_event_flag("girisleracik",0)
				server_timer("disariyollanetmarlis",7)
			elseif game.get_event_flag("netmarlis2")+1 >= 500 then
				notice_all("Gemi Sava�lar� bitti. ")
				notice_all("Gemi Sava�lar�n� kazanan Sar� bayrak ")
				notice_in_map("1 dakika i�erisinde herkes �ehre g�nderilicek. ", pc.get_map_index())
				game.set_event_flag("netmarlis1",0)
				game.set_event_flag("netmarlis2",0)
				game.set_event_flag("netmarlis3",0)
				game.set_event_flag("girisleracik",0)
				server_timer("disariyollanetmarlis",7)
			elseif game.get_event_flag("netmarlis3")+1 >= 500 then
				notice_all("Gemi Sava�lar� bitti. ")
				notice_all("Gemi Sava�lar�n� kazanan Mavi bayrak ")
				notice_in_map("1 dakika i�erisinde herkes �ehre g�nderilicek. ", pc.get_map_index())
				game.set_event_flag("netmarlis1",0)
				game.set_event_flag("netmarlis2",0)
				game.set_event_flag("netmarlis3",0)
				game.set_event_flag("girisleracik",0)
				server_timer("disariyollanetmarlis",7)
			end
			local sans = number(1,9)
			if sans == 1 then
				local a = game.get_event_flag("netmarlis1")
				local b = game.get_event_flag("netmarlis2")
				local c = game.get_event_flag("netmarlis3")
				notice_in_map("Mevcut Puan Durumu: Shinsoo(K�rm�z�) : "..a.." ", pc.get_map_index())
				notice_in_map("Mevcut Puan Durumu: Chunjo (Sar�) : "..b.." ", pc.get_map_index())
				notice_in_map("Mevcut Puan Durumu: Jinno (Mavi) : "..c.." ", pc.get_map_index())
			end
			game.set_event_flag("netmarlis"..pc.empire.."", as+1)
		end

		when disariyollanetmarlis.server_timer begin
			warp_all_to_village(356)
		end
	end
end