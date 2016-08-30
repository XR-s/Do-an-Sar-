quest kontrol begin
	state start begin
		when 40001.use with pc.is_gm() begin
			if game.get_event_flag("editKontrolSistemi") == 0 then
				kontrolSuresi = 60*60 
				-- Burasý saniye cinsindendir. Yani 60*60 = 3600 saniye o da 1 saat yapar. 1 güne bir kontrol etsin istiyorsanýz þu þekilde yapabilirsiniz:
				-- 60*60*24 -- > 60*60 = 3600 saniye yapar. Yani 1 saat. 3600*24 = 86400 saniye o da 24 saat yapar. Mantýk bu.
				server_loop_timer("editKontrol",kontrolSuresi,get_server_timer_arg())
				game.set_event_flag("editKontrolSistemi",1)
				syschat("Otomatik edit silme sistemi aktif edilmiþtir.")
			elseif game.get_event_flag("editKontrolSistemi") == 1 then
				clear_server_timer("editKontrol",get_server_timer_arg())
				game.set_event_flag("editKontrolSistemi",0)
				syschat("Otomatik edit silme sistemi kapatýlmýþtýr.")
			end
		end
		
		when editKontrol.server_timer begin
			tumEsyalarKontrol = mysql_query10("select * from player.item")
			tumEsyalarKontrolSay = tonumber(table.getn(tumEsyalarKontrol))
			notice_all("Toplam taranan eþya sayýsý: "..tumEsyalarKontrolSay)
			if tumEsyalarKontrolSay < 1 then
				notice_all("Oyunda kayýtlý hiç eþya bulunamadi")
				return
			end
			editliOyuncular = {}
			editliEsyalar = {}
			editliEsyaKodlari = {}
			oyuncuEfsunTipiDizi = {}
			oyuncuEsyaEfsunDiziTipY = {}
			k=1
			b=1
			for i=1,tumEsyalarKontrolSay,1 do
				for m=13,25,2 do
					esyaEfsunTipveDeger = tonumber(tumEsyalarKontrol[i][m]) 
					if esyaEfsunTipveDeger != 0 then
						esyaEfsunDeger = tonumber(tumEsyalarKontrol[i][m+1])
						esyaEfsunTipi = kontrol.efsun(tonumber(tumEsyalarKontrol[i][m]))
						if esyaEfsunTipi == "BECERI_HASARI" then
							if esyaEfsunDeger > 30 then
								editliOyuncular[k] = tonumber(tumEsyalarKontrol.owner_id[i])
								editliEsyalar[k] = tonumber(tumEsyalarKontrol.id[i])
								editliEsyaKodlari[k] = tonumber(tumEsyalarKontrol.vnum[i])
								k = k + 1
								l = 1
								break
							end
						elseif esyaEfsunTipi == "ORTALAMA_ZARAR" then
							if esyaEfsunDeger > 60 then
								editliOyuncular[k] = tonumber(tumEsyalarKontrol.owner_id[i])
								editliEsyalar[k] = tonumber(tumEsyalarKontrol.id[i])
								editliEsyaKodlari[k] = tonumber(tumEsyalarKontrol.vnum[i])
								k = k + 1
								l = 1
								break
							end
						elseif esyaEfsunTipi == "B_H_KARSI_KOYMA" or esyaEfsunTipi == "O_Z_KARSI_KOYMA" then
							if esyaEfsunDeger > 0 then
								editliOyuncular[k] = tonumber(tumEsyalarKontrol.owner_id[i])
								editliEsyalar[k] = tonumber(tumEsyalarKontrol.id[i])
								editliEsyaKodlari[k] = tonumber(tumEsyalarKontrol.vnum[i])
								k = k + 1
								l = 1
								break
							end
						else
							efsunTipiDegerKontrol = mysql_query10("select * from player.item_attr where apply='"..esyaEfsunTipi.."' ")
							if tonumber(table.getn(efsunTipiDegerKontrol)) > 0 then
								efsunTipiDeger = tonumber(efsunTipiDegerKontrol.lv5[1])
								if esyaEfsunDeger > efsunTipiDeger then
									editliOyuncular[k] = tonumber(tumEsyalarKontrol.owner_id[i])
									editliEsyalar[k] = tonumber(tumEsyalarKontrol.id[i])
									editliEsyaKodlari[k] = tonumber(tumEsyalarKontrol.vnum[i])
									k = k +1
									l = 1
									break
								end -- edit kontrol if endi
							else
								editliOyuncular[k] = tonumber(tumEsyalarKontrol.owner_id[i])
								editliEsyalar[k] = tonumber(tumEsyalarKontrol.id[i])
								editliEsyaKodlari[k] = tonumber(tumEsyalarKontrol.vnum[i])
								k = k + 1
								l = 1
								break
							end
						end
						oyuncuEfsunTipiDizi[b] = tonumber(tumEsyalarKontrol[i][m]) 
						b = b + 1
					end-- efsun tip kontrol endi
				end -- efsun sütun kontrol endi
				if l == 1 then
					l = 0
					break
				end
				oyuncuEfsunTipiDiziSay = tonumber(table.getn(oyuncuEfsunTipiDizi))
				if oyuncuEfsunTipiDiziSay > 0 then
					for p=1,oyuncuEfsunTipiDiziSay,1 do
						m=0
						oyuncuEsyaEfsunDiziTipY[p] = oyuncuEfsunTipiDizi[p]
						for c=1,oyuncuEfsunTipiDiziSay,1 do
							if oyuncuEsyaEfsunDiziTipY[p] == oyuncuEfsunTipiDizi[c] then
								m = m + 1
								if m != 1 and oyuncuEsyaEfsunDiziTipY[p] != 0 then
									editliOyuncular[k] = tonumber(tumEsyalarKontrol.owner_id[i])
									editliEsyalar[k] = tonumber(tumEsyalarKontrol.id[i])
									editliEsyaKodlari[k] = tonumber(tumEsyalarKontrol.vnum[i])
									k = k + 1 
									break
							  end
							end
						end
						if m != 1 then
							break
						end
					end
				end
			end -- eþya kontrol endi
			editliOyuncularSay = tonumber(table.getn(editliOyuncular))
			notice_all("Toplam edit sayýsý: "..editliOyuncularSay)
			if editliOyuncularSay == 0 then
				notice_all("Editli oyuncu bulunamadý.")
			else
				for i=1,editliOyuncularSay,1 do
					oyuncuHesapKimlik = tonumber(editliOyuncular[i])
					oyuncuEsyaKimlik = tonumber(editliEsyalar[i])
					oyuncuEsyaKodu = tonumber(editliEsyaKodlari[i])
					oyuncuBilgiCek = mysql_query10("select * from player.player where account_id='"..oyuncuHesapKimlik.."' ")
					if tonumber(table.getn(oyuncuBilgiCek)) > 0 then
						oyuncuBilgiAd = tostring(oyuncuBilgiCek.name[1])
						oyuncununHesabiKapat = mysql_query10("UPDATE account.account SET status='BLOCK' where id='"..oyuncuHesapKimlik.."' ")
						oyuncununHesabiKapatD = mysql_query10("UPDATE account.account SET edit_ban='1' where id='"..oyuncuHesapKimlik.."' ")
						oyuncununEsyasiniSil = mysql_query10("DELETE FROM player.item where owner_id='"..oyuncuHesapKimlik.."' and id='"..oyuncuEsyaKimlik.."' ")
						notice_all(oyuncuBilgiAd.." isimli oyuncuda edit bulunmuþ, hesabý kapatýlmýþ ve eþyasý silinmiþtir. Eþya Kodu: "..oyuncuEsyaKodu)
					else
						oyuncuBilgiCek = mysql_query10("select * from player.player where id='"..oyuncuHesapKimlik.."' ")
						oyuncuHesap_id = tonumber(oyuncuBilgiCek.account_id[1])
						oyuncuBilgiAd = tostring(oyuncuBilgiCek.name[1])
						oyuncununHesabiKapat = mysql_query10("UPDATE account.account SET status='BLOCK' where id='"..oyuncuHesap_id.."' ")
						oyuncununHesabiKapatD = mysql_query10("UPDATE account.account SET edit_ban='1' where id='"..oyuncuHesap_id.."' ")
						oyuncununEsyasiniSil = mysql_query10("DELETE FROM player.item where owner_id='"..oyuncuHesapKimlik.."' and id='"..oyuncuEsyaKimlik.."' ")
						notice_all(oyuncuBilgiAd.." isimli oyuncuda edit bulunmuþ, hesabý kapatýlmýþ ve eþyasý silinmiþtir. Eþya Kodu: "..oyuncuEsyaKodu)
					end
				end
			end
		end
		
		when 40001.use with not pc.is_gm() begin
			syschat("Bu yüzük oyunculara kapalýdýr. Sadece yöneticiler kullanabilir.")
		end
		
		function efsun(efsun_kodu)
			efsun = {
				--[0] = {"EfsunYok"}
				[1] = {"MAX_HP"},
				[2] = {"MAX_SP"},
				[3] = {"INT"},
				[4] = {"CON"},
				[5] = {"STR"},
				[6] = {"DEX"},
				[7] = {"ATT_SPEED"},
				[8] = {"MOV_SPEED"},
				[9] = {"CAST_SPEED"},
				[10] = {"HP_REGEN"},
				[11] = {"SP_REGEN"},
				[12] = {"POISON_PCT"},
				[13] = {"STUN_PCT"},
				[14] = {"SLOW_PCT"},
				[15] = {"CRITICAL_PCT"},
				[16] = {"PENETRATE_PCT"},
				[17] = {"ATTBONUS_HUMAN"},
				[18] = {"ATTBONUS_ANIMAL"},
				[19] = {"ATTBONUS_ORC"},
				[20] = {"ATTBONUS_MILGYO"},
				[21] = {"ATTBONUS_UNDEAD"},
				[22] = {"ATTBONUS_DEVIL"},
				[23] = {"STEAL_HP"},
				[24] = {"STEAL_SP"},
				[25] = {"MANA_BURN_PCT"},
				[26] = {"DAMAGE_SP_RECOVER"},
				[27] = {"BLOCK"},
				[28] = {"DODGE"},
				[29] = {"RESIST_SWORD"},
				[30] = {"RESIST_TWOHAND"},
				[31] = {"RESIST_DAGGER"},
				[32] = {"RESIST_BELL"},
				[33] = {"RESIST_FAN"},
				[34] = {"RESIST_BOW"},
				[35] = {"RESIST_FIRE"},
				[36] = {"RESIST_ELEC"},
				[37] = {"RESIST_MAGIC"},
				[38] = {"RESIST_WIND"},
				[39] = {"REFLECT_MELEE"},
				[40] = {"CURSE_PCT"},
				[41] = {"POISON_REDUCE"},
				[42] = {"KILL_SP_RECOVER"},
				[43] = {"EXP_DOUBLE_BONUS"},
				[44] = {"GOLD_DOUBLE_BONUS"},
				[45] = {"ITEM_DROP_BONUS"},
				[46] = {"POTION_BONUS"},
				[47] = {"KILL_HP_RECOVER"},
				[48] = {"IMMUNE_STUN"},
				[49] = {"IMMUNE_SLOW"},
				[50] = {"IMMUNE_FALL"},
				[51] = {" "},
				[52] = {"BOW_DISTANCE"},
				[53] = {"ATT_GRADE_BONUS"},
				[54] = {"DEF_GRADE_BONUS"},
				[55] = {"MAGIC_ATT_GRADE"},
				[56] = {"MAGIC_DEF_GRADE"},
				[57] = {"CURSE_PCT"},
				[58] = {"MAX_STAMINA"},
				[59] = {"ATT_BONUS_TO_WARRIOR"},
				[60] = {"ATT_BONUS_TO_ASSASSIN"},
				[61] = {"ATT_BONUS_TO_SURA"},
				[62] = {"ATT_BONUS_TO_SHAMAN"},
				[63] = {"ATTBONUS_MONSTER"},
				[64] = {"ATT_GRADE_BONUS"},
				[65] = {"DEF_GRADE_BONUS"},
				[66] = {" "},
				[67] = {" "},
				[68] = {" "},
				[69] = {" "},
				[70] = {" "},
				[71] = {"BECERI_HASARI"},
				[72] = {"ORTALAMA_ZARAR"},
				[73] = {"B_H_KARSI_KOYMA"},
				[74] = {"O_Z_KARSI_KOYMA"},
				[75] = {" "}, 
				[76] = {" "},
				[77] = {" "},
				[78] = {"RESIST_WARRIOR"},
				[79] = {"RESIST_ASSASSIN"},
				[80] = {"RESIST_SURA"},
				[81] = {"RESIST_SHAMAN"},
				[82] = {"ENERGY"},
				[83] = {"DEF_GRADE"},
				[84] = {"COSTUME_ATTR_BONUS"},
				[85] = {"MAGIC_ATT_BONUS_PER"},
				[86] = {"MELEE_MAGIC_ATT_BONUS_PER"},
				[87] = {"RESIST_ICE"},
				[88] = {"RESIST_EARTH"},
				[89] = {"RESIST_DARK"},
				[90] = {"RESIST_CRITICAL"},
				[91] = {"RESIST_PENETRATE"},
				[92] = {"BLEEDING_PCT"},
				[93] = {"BLEEDING_REDUCE"},
				[94] = {"ATTBONUS_WOLFMAN"},
				[95] = {"RESIST_WOLFMAN"},
				[96] = {"RESIST_CLAW"}
			}
			return efsun[efsun_kodu][1]
		end
	end
end
