quest forked_road_point begin
	state start begin
		when kill with npc.is_pc() begin
			if forked.isforkedmapindex( pc.get_map_index() ) == true then
				if npc.empire != pc.empire then
					if pc.get_empire() == 1 then
						if game.get_event_flag("3yolsinir") > game.get_event_flag("3yolkirmizi") then
							local kirmiziflag = game.get_event_flag("3yolkirmizi")
							game.set_event_flag("3yolkirmizi", kirmiziflag+1)
							server_timer("puanduyur",5)
							chat(" Tebrikler.. ")
							chat(" Sayende krall���n bir puan daha kazand�. ")
						elseif game.get_event_flag("3yolsinir") == game.get_event_flag("3yolkirmizi") then
							notice_all(" �mparatorluk sava��n�, Shinsoo Krall��� kazand�. ")
							game.set_event_flag("threeway_war",0)
							forked.purge_all_monsters()
							warp_all_to_village(forked.getsungzimapindex(), 1)
							warp_all_to_village(forked.getpassmapindexbyempire(1), 1)
							warp_all_to_village(forked.getpassmapindexbyempire(2), 1)
							warp_all_to_village(forked.getpassmapindexbyempire(3), 1)
						end
					elseif pc.get_empire() == 2 then
						if game.get_event_flag("3yolsinir") > game.get_event_flag("3yolsari") then
							local sariflag = game.get_event_flag("3yolsari")
							game.set_event_flag("3yolsari", sariflag+1)
							server_timer("puanduyur",15)
							chat(" Tebrikler.. ")
							chat(" Sayende krall���n bir puan daha kazand�. ")
						elseif game.get_event_flag("3yolsinir") == game.get_event_flag("3yolsari") then
							notice_all(" 3 Yol Sava��n� Chunjo Krall��� Kazand�. ")
							game.set_event_flag("threeway_war",0)
							forked.purge_all_monsters()
							warp_all_to_village(forked.getsungzimapindex(), 1)
							warp_all_to_village(forked.getpassmapindexbyempire(1), 1)
							warp_all_to_village(forked.getpassmapindexbyempire(2), 1)
							warp_all_to_village(forked.getpassmapindexbyempire(3), 1)
						end
					elseif pc.get_empire() == 3 then
						if game.get_event_flag("3yolsinir") > game.get_event_flag("3yolmavi") then
							local maviflag = game.get_event_flag("3yolmavi")
							game.set_event_flag("3yolmavi", maviflag+1)
							server_timer("puanduyur",15)
							chat(" Tebrikler.. ")
							chat(" Sayende krall���n bir puan daha kazand�. ")
						elseif game.get_event_flag("3yolsinir") == game.get_event_flag("3yolmavi") then
							notice_all(" �mparatorluk sava��n�, Jinno Krall��� kazand�. ")
							game.set_event_flag("threeway_war",0)
							forked.purge_all_monsters()
							warp_all_to_village(forked.getsungzimapindex(), 1)
							warp_all_to_village(forked.getpassmapindexbyempire(1), 1)
							warp_all_to_village(forked.getpassmapindexbyempire(2), 1)
							warp_all_to_village(forked.getpassmapindexbyempire(3), 1)
						end
					end
				end
			end
		end
		when 11001.chat." GM: �mparatorluk Sava�� puan s�n�r� " or 11003.chat." GM: �mparatorluk Sava�� puan s�n�r� " or 11005.chat." GM: �mparatorluk Sava�� puan s�n�r� " with pc.is_gm() begin
			if game.get_event_flag("threeway_war") == 0 then
				say("�mparatorluk Sava�� aktif de�il. ")
				say("�mparatorluk Sava��n� a�man gerek. ")
			else
				say(" �mparatorluk Sava�� puan s�n�r� se�. ")
				local sinir = select(" 50 ", " 100 ", " 150 ", " 200 ", " 250 ", " Vazge� ")
				if sinir == 6 then
					return
				elseif sinir == 1 then
					say(" Puan s�n�r� 50 yap�ld�. ")
					game.set_event_flag("3yolsinir",50)
				elseif sinir == 2 then
					say(" Puan s�n�r� 100 yap�ld�. ")
					game.set_event_flag("3yolsinir",100)
				elseif sinir == 3 then
					say(" Puan s�n�r� 150 yap�ld�. ")
					game.set_event_flag("3yolsinir",150)
				elseif sinir == 4 then
					say(" Puan s�n�r� 200 yap�ld�. ")
					game.set_event_flag("3yolsinir",200)
				elseif sinir == 5 then
					say(" Puan s�n�r� 250 yap�ld�. ")
					game.set_event_flag("3yolsinir",250)
				end
			end
		end
		when puanduyur.server_timer begin
			local kirmizipuan = game.get_event_flag("3yolkirmizi")
			local saripuan = game.get_event_flag("3yolsari")
			local mavipuan = game.get_event_flag("3yolmavi")
			notice_all(" Shinsoo: "..kirmizipuan.." Chunjo: "..saripuan.." Jinno: "..mavipuan.." ")
		end
		when login with game.get_event_flag("threeway_war") == 0 begin
			game.set_event_flag("3yolkirmizi",0)
			game.set_event_flag("3yolsari",0)
			game.set_event_flag("3yolmavi",0)
			game.set_event_flag("3yolsinir",0)
		end
	end
end