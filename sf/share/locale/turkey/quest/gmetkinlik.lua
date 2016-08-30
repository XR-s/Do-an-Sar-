quest gmetkinlik begin
	state start begin
		when letter with pc.is_gm() begin
			send_letter("GM: Etkinlik")
			end
		when info or button with pc.is_gm() begin
					say_title("Etkinlik listesi")
					local event = select("Ramazan ay'� etkinli�i","Ya�mac�lar� Avla etkinli�i ","Sertifika etkinli�i ","Hallowen etkinli�i ","Olimpiyat etkinli�i","Noel etkinli�i","Sevgililer G�n� etkinli�i","D�nya Kupas� etkinli�i","Ay����� Define Sand��� etkinli�i","Alt�gen Hediye Paketi etkinli�i","Kost�m etkinli�i","��l F�rt�nas� Sand��� etkinli�i","Sonsuz K�� Sand��� etkinli�i","Kapat")
					if event == 1 then
					local event2 = select("Ramazan etkinli�i ba�lat","Ramazan etkinli�i bitir","Vazge� ")
					if event2 == 1 then
					notice_all("Etkinlik: 'Ramazan Ay�' etkinli�i ba�lad�!")
					notice_all("Etkinlik: 'Tarih�i' ve 'Niyetli Vatanda�' ile g�r��. ")
					game.set_event_flag("ramadan_drop",1)
					game.set_event_flag("ramadan_reward",1)
					send_letter("GM: Etkinlik")
					elseif event2 == 2 then
					notice_all("Etkinlik: 'Ramazan Ay�' etkinli�i sona erdi.")
					notice_all("Etkinlik: 'Tarih�i' ve 'Niyetli Vatanda�' k�ylerine geri d�nd�.")
					game.set_event_flag("ramadan_reward",0)
					game.set_event_flag("ramadan_drop",0)
					send_letter("GM: Etkinlik")
					elseif event2 == 3 then
					return
					send_letter("GM: Etkinlik")
					end
					elseif event == 2 then
					local event3 = select("Ya�mac�lar� Avla etkinli�i ba�lat ","Ya�mac�lar� Avla etkinli�i bitir","Vazge� ")
					if event3 == 1 then
					notice_all("Etkinlik: 'Ya�mac�lar� Avla' etkinli�i ba�lad�. ")
					notice_all("Etkinlik: Handu Up ve Wonda Rim ile g�r��. ")
					game.set_event_flag("harvest_festival",1)
					send_letter("GM: Etkinlik")
					elseif event3 == 2 then
					notice_all("Etkinlik: 'Ya�mac�lar� Avla' etkinli�i sona erdi.")
					notice_all("Etkinlik: 'Handu-Up' ve 'Wonda-Rim' k�ylerine geri d�nd�.")
					game.set_event_flag("harvest_festival",0)
					send_letter("GM: Etkinlik")
					elseif event3 == 3 then
					return
					send_letter("GM: Etkinlik")
					end
					elseif event == 3 then
					local event4 = select("Sertifika etkinli�i ba�lat ","Sertifika etkinli�i kapat","Vazge� ")
					if event4 == 1 then
					notice_all("Etkinlik: 'Sertifika' etkinli�i ba�lad�. ")
					notice_all("Etkinlik: Metin Ta�lar�ndan ''Sertifika'' elde edebilirsin. ")
					notice_all("Etkinlik: 16 adet Metin Ta�� veya Patron kesildi�inde kazan�l�r. ")
					game.set_event_flag("sertifika_drop",1)
					send_letter("GM: Etkinlik")
					elseif event4 == 2 then
					notice_all("Etkinlik: 'Sertifika' etkinli�i sona erdi.")
					game.set_event_flag("sertifika_drop",0)	
					send_letter("GM: Etkinlik")
					elseif event4 == 3 then
					return
					send_letter("GM: Etkinlik")
					end
					elseif event == 4 then
					local event5 = select("Hallowen etkinli�i ba�lat ","Hallowen etkinli�i bitir ","Vazge� ")
					if event5 == 1 then
					notice_all("Etkinlik: 'Hallowen' etkinli�i ba�lad�. ")
					notice_all("Etkinlik: 'Jack Pumpkin' ile g�r��. ")
					game.set_event_flag("halloween_hair",1)
					send_letter("GM: Etkinlik")
					elseif event5 == 2 then	
					notice_all("Etkinlik: 'Hallowen' etkinli�i sona erdi. ")
					notice_all("Etkinlik: 'Jack Pumpkin' k�y�ne geri d�nd�. ")
					game.set_event_flag("halloween_hair",0)
					send_letter("GM: Etkinlik")
					elseif event5 == 3 then			
					return
					send_letter("GM: Etkinlik")
					end
					elseif event == 5 then
					local event6 = select("Olimpiyat etkinli�i ba�lat ","Olimpiyat etkinli�i bitir ","Vazge� ")
					if event6 == 1 then
					notice_all("Etkinlik: 'Olimpiyat' etkinli�i ba�lad�. ")
					notice_all("Etkinlik: 'Yu-Hwan' ile g�r��. ")
					game.set_event_flag("medal_part_drop",1)
					send_letter("GM: Etkinlik")
					elseif event6 == 2 then 
					notice_all("Etkinlik: 'Olimpiyat' etkinli�i sona erdi. ")
					game.set_event_flag("medal_part_drop",0)
					send_letter("GM: Etkinlik")
					elseif event6 == 3 then	
					return
					send_letter("GM: Etkinlik")
					end
					elseif event == 6 then
					local event7 = select("Noel etkinli�i ba�lat ","Noel etkinli�i bitir ","Vazge� ")
					if event7 == 1 then
					notice_all("Etkinlik: 'Noel' etkinli�i ba�lad�. ")
					notice_all("Etkinlik: 'Noel Baba' ile g�r��. ")
					game.set_event_flag("new_xmas_event",1)
					send_letter("GM: Etkinlik")
					elseif event7 == 2 then 
					notice_all("Etkinlik: 'Noel' etkinli�i sona erdi. ")
					notice_all("Etkinlik: 'Noel Baba' k�y�ne geri d�nd�. ")
					game.set_event_flag("new_xmas_event",0)
					send_letter("GM: Etkinlik")
					elseif event7 == 3 then	
					return
					send_letter("GM: Etkinlik")
					end
					elseif event == 7 then
					local event8 = select("Sevgililer g�n� etkinli�i ba�lat ","Sevgililer g�n� etkinli�i bitir ","Vazge� ")
					if event8 == 1 then
					notice_all("Etkinlik: ''Sevgililer g�n�'' etkinli�i ba�lad�. ")
					notice_all("Etkinlik: T�m canavarlardan G�l, �ikolata ve Amor Sand��� elde edebilirsin. ")
					game.set_event_flag("valentin_drop",1)
					send_letter("GM: Etkinlik")
					elseif event8 == 2 then 
					notice_all("Etkinlik: ''Sevgililer g�n�'' etkinli�i sona erdi. ")
					game.set_event_flag("valentin_drop",0)
					send_letter("GM: Etkinlik")
					elseif event8 == 3 then	
					return					
					send_letter("GM: Etkinlik")
					end
					elseif event == 8 then					
			
					local event9 = select("D�nya kupas� etkinli�i ba�lat ","D�nya kupas� etkinli�i bitir ","Vazge� ")
					if event9 == 1 then
					notice_all("Etkinlik: ''D�nya kupas�'' etkinli�i ba�lad�. ")
					notice_all("Etkinlik: T�m canavarlardan Futbol Topu elde edebilirsin. ")
					notice_all("Etkinlik: Alt�n Futbol Topu �d�l� i�in ''Yu-Hwan'' ile g�r��.  ")
					game.set_event_flag("new_football_2014_event",1)
					game.set_event_flag("football_drop",1)
					send_letter("GM: Etkinlik")
					elseif event9 == 2 then 
					notice_all("Etkinlik: ''D�nya kupas�'' etkinli�i sona erdi. ")
					game.set_event_flag("new_football_2014_event",0)
					game.set_event_flag("football_drop",0)
					send_letter("GM: Etkinlik")
					elseif event9 == 3 then	
					return					
					send_letter("GM: Etkinlik")
					end
					elseif event == 9 then

					local event10 = select("Ay����� Define Sand��� etkinli�i ba�lat ","Ay����� Define Sand��� etkinli�i bitir ","Vazge� ")
					if event10 == 1 then
					notice_all("Etkinlik: ''Ay����� Define Sand���'' etkinli�i ba�lad�. ")
					notice_all("Etkinlik: T�m canavarlardan Ay����� Define Sand��� elde edebilirsin. ")
					notice_all("Etkinlik: 300 adet canavar kesildi�inde kazan�l�r. ")
					game.set_event_flag("event_ayisigi_drop",1)
					send_letter("GM: Etkinlik")
					elseif event10 == 2 then 
					notice_all("Etkinlik: ''Ay����� Define Sand���'' etkinli�i sona erdi. ")
					game.set_event_flag("event_ayisigi_drop",0)
					send_letter("GM: Etkinlik")
					elseif event10 == 3 then	
					return					
					send_letter("GM: Etkinlik")
					end
					elseif event == 10 then					
					local event11 = select("Alt�gen Hediye Paketi etkinli�i ba�lat ","Alt�gen Hediye Paketi etkinli�i bitir ","Vazge� ")
					if event11 == 1 then
					notice_all("Etkinlik: ''Alt�gen Hediye Paketi'' etkinli�i ba�lad�. ")
					notice_all("Etkinlik: T�m canavarlardan Alt�gen Hediye Paketi elde edebilirsin. ")
					notice_all("Etkinlik: 300 adet canavar kesildi�inde kazan�l�r. ")
					game.set_event_flag("event_altigen_drop",1)
					send_letter("GM: Etkinlik")
					elseif event11 == 2 then 
					notice_all("Etkinlik: ''Alt�gen Hediye Paketi'' etkinli�i sona erdi. ")
					game.set_event_flag("event_altigen_drop",0)
					send_letter("GM: Etkinlik")
					elseif event11 == 3 then	
					return					
					send_letter("GM: Etkinlik")
					end
					elseif event == 11 then
					local event12 = select("Kost�m etkinli�i ba�lat ","Kost�m etkinli�i bitir ","Vazge� ")
					if event12 == 1 then
					notice_all("Etkinlik: ''Kost�m'' etkinli�i ba�lad�. ")
					notice_all("Etkinlik: 30. seviye ve �zeri Metin Ta�lar�ndan ''Kost�m'' elde edebilirsin. ")
					notice_all("Etkinlik: 10 adet Metin Ta�� kesildi�inde kazan�l�r. ")
					game.set_event_flag("costume_drop",1)
					send_letter("GM: Etkinlik")
					elseif event12 == 2 then 
					notice_all("Etkinlik: ''Kost�m'' etkinli�i sona erdi. ")
					game.set_event_flag("costume_drop",0)
					send_letter("GM: Etkinlik")
					elseif event12 == 3 then	
					return					
					send_letter("GM: Etkinlik")
					end
					elseif event == 12 then
					local event13 = select("��l F�rt�nas� Sand��� etkinli�i ba�lat ","��l F�rt�nas� Sand��� etkinli�i bitir ","Vazge� ")
					if event13 == 1 then
					notice_all("Etkinlik: ''��l F�rt�nas� Sand���'' etkinli�i ba�lad�. ")
					notice_all("Etkinlik: Metin Ta�lar�ndan ve Patronlardan ''��l F�rt�nas� Sand���'' elde edebilirsin. ")
					game.set_event_flag("col_firtinasi_drop",1)
					send_letter("GM: Etkinlik")
					elseif event13 == 2 then 
					notice_all("Etkinlik: ''��l F�rt�nas� Sand���'' etkinli�i sona erdi. ")
					game.set_event_flag("col_firtinasi_drop",0)
					send_letter("GM: Etkinlik")
					elseif event13 == 3 then	
					return					
					send_letter("GM: Etkinlik")
					end
					elseif event == 13 then
					local event14 = select("Sonsuz K�� Sand��� etkinli�i ba�lat ","Sonsuz K�� Sand��� etkinli�i bitir ","Vazge� ")
					if event14 == 1 then
					notice_all("Etkinlik: ''Sonsuz K�� Sand���'' etkinli�i ba�lad�. ")
					notice_all("Etkinlik: Metin Ta�lar�ndan ve Patronlardan ''Sonsuz K�� Sand���'' elde edebilirsin. ")
					notice_all("Etkinlik: 5 adet Metin Ta�� veya Patron kesildi�inde, kazan�l�r. ")
					game.set_event_flag("sonsuz_kis_drop",1)
					send_letter("GM: Etkinlik")
					elseif event14 == 2 then 
					notice_all("Etkinlik: ''Sonsuz K�� Sand���'' etkinli�i sona erdi. ")
					game.set_event_flag("sonsuz_kis_drop",0)
					send_letter("GM: Etkinlik")
					elseif event14 == 3 then	
					return					
					send_letter("GM: Etkinlik")
					end
					elseif event == 14 then
					send_letter("GM: Etkinlik")
					return
					end
				end
			end
		end
