----------------------------------------------------
--COLLECT maxmi
----------------------------------------------------
quest collect_quest_lv60  begin
        state start begin
        end
        state run begin
                when login or levelup with pc.level >= 60 and pc.level <= 106 and not pc.is_gm() begin
                        set_state(information)
                end
        end

        state information begin
                when letter begin
                        local v = find_npc_by_vnum(20084)
                        if v != 0 then
                                target.vid("__TARGET__", v, "Chaegirap")
                        end
                        send_letter("Chaegirab'�n Ricas� ")
                end

                when button or info begin
                        say_title("Chaegirab'�n Ricas� ")
                        say("")
                        say("Uriel'in ��rencisi Biyolog Chaegirab")
                        say("seni ar�yor.")
                        say("Hemen onun yan�na git.")
                        say("")
                end

                when __TARGET__.target.click or
                        20084.chat."Buz Topu" begin
                        target.delete("__TARGET__")
                        say_title("Chaegirab:")
			say("")
                        ---                                                   l
                    say("Ha ha yine mi sen?")
                        say("Seni g�rd�g�me sevindim.")
                        say("Bu defa bat�daki buz da��yla ilgili ara�t�rma ")
                        say("yap�yorum. Bana yard�m et, l�tfen...")
                        say("Ger�ekten �ok i�im var.")
                        say("Benim i�in bat�daki buz da��na gidebilir misin?")
                        say("En iyi sekilde kar��l���n� alacaks�n!")
				wait()
                        say_title("Chaegirab:")
			say("")
                        say("Bat�daki buz da��yla ilgili her �eyi bilmek ")
                        say("istiyorum. Oraya hi� gittin mi?")
                        say("Bu Buz da�� eski zamanlarda �ok g��l� ")
                        say("oldugu i�in, her b�y�c� oray� ara�t�rd�.")
                        say("Oradaki Buz Toplar�n� ara�t�r�yorum.")
                        say("")
                        say("Renkleri a��k ve parlak.")
			say("")
                        wait()
                        say_title("Chaegirab:")
			say("")
                        say("Bana buz topunu getirmek i�in")
                        say("ne kadar zamana ihtiyac�n var?")
                        say("Yaln�z, k�r�k buz toplar�n� getirmemelisin.")
                        say("Onlar� kullanamam..")
                        say("Bana 20 tane numune laz�m...")
                        say("Bol �anslar!")
                        say("")
                        set_state(go_to_disciple)
                        pc.setqf("duration",0) 
                        pc.setqf("collect_count",0)                        pc.setqf("drink_drug",0) 
                end
        end

        state go_to_disciple begin
                when letter begin
                        send_letter("Biyolo�un Ara�t�rmas� ")

                end
                when button or info begin
                        say_title("Sohan Da��ndan Buz Topu")
                        ---                                                   l
                        say("")
                        say("Uriel'in �grencisi Chaegirab bat�daki buz da��n� ")
                        say("inceliyor. Oradaki gizli enerji ve ")
                        say("yabanil co�rafi yap�s� ile")
                        say("bir efsane haline gelmi� durumda.")
                        say("T�m b�y�c�lerin ilgisini �ekiyor.")
                        say("Buz toplar�, bu buz da��nin ahartarlar�.")
                        say("Chegirab'a 20 buz topu getirmelisin.")
                        say("")
                        say_item_vnum(30050)
                        say_reward("�imdiye kadar ".." "..pc.getqf("collect_count").." adet toplad�n.")
                end

                when 71035.use begin 
                        if get_time() < pc.getqf("duration") then
                                say("Ona daha sihirli su veremeyiz.")
                                return
                        end
                        if pc.getqf("drink_drug")==1 then
                                say("Yoksa kullandin mi.")
                                return
                        end
                        if pc.count_item(30050)==0 then
                                say_title("Chaegirab:")
				say("")
				---                                                   l
                                say("Buz toplar�n� bulduktan sonra ")
                                say("ona sihirli suyu verebiliriz.")
                                say("")
                                return
                        end
                        item.remove()
                        pc.setqf("drink_drug",1)
                end



		when 20084.chat."GM: collect_quest_lv60.skip_delay" with pc.count_item(30050) >0 and pc.is_gm() and get_time() <= pc.getqf("duration") begin
			say(mob_name(20084))
			say("You are GM, OK")
			pc.setqf("duration", get_time()-1)
			return
		end

            when 20084.chat."Buz topu mu buldun? " with pc.count_item(30050) >0   begin
                        if get_time() > pc.getqf("duration") then
                                say_title("Chaegirab:")
				say("")
                                ---                                                   l
                                say("Oh!! Buldun...")
                                say("�nce incelemem laz�m...")
                                say("B�y�tecim nerede..")
                                say("Bir dakika...")
                                say("")
                                pc.remove_item(30050, 1)
                                pc.setqf("duration",get_time()+1)
                                wait()

                                local pass_percent
                                if pc.getqf("drink_drug")==0 then
                                        pass_percent=60
                                else
                                        pass_percent=90
                                end

                                local s= number(1,20)
                                if s<= pass_percent  then
                                   if pc.getqf("collect_count")< 19 then     
                                                local index =pc.getqf("collect_count")+1
                                                pc.setqf("collect_count",index)
                                                say_title("Chaegirab:")
						say("")
                                                say("Ohh!! Harika! Sa�ol...")
                                                say("Hala ".." "..20-pc.getqf("collect_count").. " tane gerek.")
                                                say("Bol �anslar!")
                                                say("")
                                                pc.setqf("drink_drug",0)
                                                return
                                        end
                                        say_title("Chaegirab:")
					say("")
					---                                                   l
                                        say("20 tane buz topunun hepsini toplad�n!")
                                        say("Yaln�z bi�ey eksik; buz ruhu'nun")
                                        say("ruh ta��, o bizim anahtar�m�z.")
                                        say("Bu ruh ta��n� ")
                                        say("buz canavarlar�ndan alabilirsin.")
                                        say("Bunu yapabilir misin?")
                                        say("")
                                        pc.setqf("collect_count",0)
                                        pc.setqf("drink_drug",0)
                                        pc.setqf("duration",0)
                                        set_state(key_item)
                                        return
                                else
                                say_title("Chaegirab:")
				say("")
                                say("Hmm......")
                                say("Kusura bakma, ama bu buz topunu kullanamam..")
                                say("Bu k�r�k.")
                                say("Bir tane daha getirir misin?")
                                say("")
                                pc.setqf("drink_drug",0)         
				return
                                end
                 else
                  say_title("Chaegirab:")
		  say("")
		  ---                                                   l
                  say("Kusura Bakma...")
                  say("Son Buz topunu, daha")
                  say("incelemedim.....")
                  say("Sonra bir daha gelir misin?")
                  say("")
                  return
                end

        end
end


        state key_item begin
                when letter begin
                        send_letter("Biyolo�un Ara�t�rmas� ")

                        if pc.count_item(30223)>0 then
                                local v = find_npc_by_vnum(20084)
                                if v != 0 then
                                        target.vid("__TARGET__", v, "Chaegirap")
                                end
                        end

                end
                when button or info begin
                        if pc.count_item(30223) >0 then
                                say_title("Aurtumryunun Ruh Ta��'n� kazand�n.")
                                say("")
                                ---                                                   l
                                say("Nihayet, buz ruhunun ta��n� kazand�n.")
                                say("Onu Chaegirab'a g�t�rmelisin.")
                                say("")
                                return
                        end

                        say_title("Buz da��ndan buz ruhunun ta�� laz�m")
                        say("")
                        ---                                                   l
                        say("Uriel'in ��rencisi Chaegirab'in incelemesi i�in")
                        say("ona Buz da��ndan 20 tane buz topu getirdin.")
                        say("Son olarak Aurtumryunun Ruh Ta�� laz�m.")
                        say_item_vnum(30223)
                        say("Bat�daki buz da��na gidip, ")
                        say("Onu Chaegirab'a getirmelisin.")
                        say("")
                end



                when kill begin
				if npc.get_race() == 1104 or npc.get_race() == 1105 or npc.get_race() == 1105 or npc.get_race() == 1107 then
                        local s = number(1,300)
                        if s==1 then
                                pc.give_item2(30223,1)
                                send_letter("Aurtumryunun Ruh Ta��'n� bulmay� ba�ard�n.")
                        end
                end
				end

                when __TARGET__.target.click  or
                        20084.chat."Ruh ta��n� getirdim" with
		pc.count_item(30223) > 0  begin
                    target.delete("__TARGET__")
                        say_title("Chaegirab:")
			say("")
			---                                                   l
                        say("Ohh!!! Te�ekk�r ederim..")
                        say("�d�l olarak g�c�n� y�kseltiyorum..")
                        say("Bu bir gizli re�ete,")
                        say("onun i�inde g�� art�r�m� var.")
                        say("Baek-Go'ya g�t�rd���nde �d�l�n� alacaks�n.")
                        say("�yi E�lenceler!")
                        say("Senin yard�m�n sayesinde art�k")
                        say("buz da�� ile ilgili her �eyi biliyorum.")
                        say("")
                        pc.remove_item(30223,1)
                        set_state(__reward)
                end

        end

        state __reward begin
                when letter begin
                        send_letter("Chaegirab'�n �d�l� ")

                        local v = find_npc_by_vnum(20018)
                        if v != 0 then
                                target.vid("__TARGET__", v, "Baek Go")
                        end

                end
                when button or info begin
                        say_title("Chaegirab'�n �d�l� ")
                        ---                                                   l
                        say("Buz Toplar� ve Ruh Ta��n�n �d�l� olarak")
                        say("Biyolog Chaegirab sana gizli bir re�ete verdi.")
                        say("Baek-Go'ya g�t�r git, sana mucizevi bir iksir yapacak.")
                end

                when __TARGET__.target.click  or
                        20018.chat."Re�eteye bak"  begin
                    target.delete("__TARGET__")
                        say_title("Baek Go:")                                            
                        say("Ah, bu Chaegirab'�n gizli re�etesi mi? Hm, bu")
                        say("sald�r� de�erini 50 puan art�racak. ��te")
                        say("iksirin! Sana bu sand��� da vermeliyim. Ona iyi")
                        say("bak.")
                        wait()
                        say(""..pc.get_name()..":")
                        say("Te�ekk�rler. Bu kez sand�k ne renk?")
                        say("")
                        wait()
                        say_title("Baek-Go:")
                        say("Bakal�m...")
                        say("Ah, A��k Ye�il Abanoz Sand�k. ��te!")
                        say_reward("Chaegirab'�n iste�ini yerine getirmenin �d�l� ")
                        say_reward("olarak sald�r� de�erin kal�c� olarak 50 puan")
                        say_reward("artt�.")

						affect.add_collect(apply.ATT_GRADE_BONUS,50,60*60*24*365*60)--60��		
                        pc.give_item2("50112",1)
						pc.delqf("collect_count")
                        clear_letter()
                        set_quest_state("collect_quest_lv70", "run")
                        set_state(__complete)
                end

        end


        state __complete begin
        end
end
