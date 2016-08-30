----------------------------------------------------------- Pelin Melek Aslan - Anyela02 -----------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------
quest warship begin
state start begin

function kazanan(bayrak,id)
notice_all("Gemi savaþýný "..bayrak.." Ýmparatorluðu kazandý! ")
server_timer("warshipbitir",3,356)
mysql_query10('UPDATE player.warship set kazanan = '..id..'')
end

function duyuru()
local bul = mysql_query10('SELECT * FROM player.warship')
local kirmizi = tonumber(bul.kirmizi[1])
local sari = tonumber(bul.sari[1])
local mavi = tonumber(bul.mavi[1])
notice_in_map("Shinsoo : "..kirmizi.." , Chunjo : "..sari.." , Jinno : "..mavi.." ",356)
end

function flagekle()
local tablocek = {
[0] = {""},
[1] = {"kirmizi"},
[2] = {"sari"},
[3] = {"mavi"},
}
local tabloisim = tablocek[pc.get_empire()][1]
local aq 
local bul = mysql_query10('SELECT * FROM player.warship')
if pc.get_empire() == 1 then
local aq = tonumber(bul.kirmizi[1])
local artir = aq+1
mysql_query10('UPDATE player.warship set '..tabloisim..' = '..artir..'')
elseif pc.get_empire() == 2 then
local aq = tonumber(bul.sari[1])
local artir = aq+1
mysql_query10('UPDATE player.warship set '..tabloisim..' = '..artir..'')
elseif pc.get_empire() == 3 then
local aq = tonumber(bul.mavi[1])
local artir = aq+1
mysql_query10('UPDATE player.warship set '..tabloisim..' = '..artir..'')
end
end

when login with pc.get_map_index() == 356 begin
if game.get_event_flag("warship") == 0 and not pc.is_gm() then
if pc.get_empire() == 1 then
pc.warp(469300,964200)
elseif pc.get_empire() == 2 then
pc.warp(55700,157900)
elseif pc.get_empire() == 3 then
pc.warp(969600,278400)
end
end
end

when 20011.chat."Gemi Savaþý " begin
if game.get_event_flag("warship") == 1 then
say_title("Uriel:")
say("")
say("Gemi Savaþýna katýlmana izin veriyorum.")
wait()
if pc.get_empire() == 1 then
pc.warp(525500,5400)
elseif pc.get_empire() == 2 then
pc.warp(517400,13700)
elseif pc.get_empire() == 3 then
pc.warp(517400,13700)
end
else
say_title("Uriel:")
say("")
say("Gemi Savaþý daha baþlamadýðý için giremezsin.")
end
end

when 20011.chat."GM: Gemi Savaþý " with pc.is_gm() begin
if pc.get_map_index() == 356 then
say_title("Kontrol Paneli:")
say("Ne yapmak istiyorsunuz? ")
local secim = select ("Baþlat ","Bitir ","Duyuru Aç ","Kapat")
if secim == 1 then
if game.get_event_flag("warship") == 0 then
say_title("Kontrol Paneli:")
say("Oyuncu öldürme limiti kaç olacak? ")
local limit = input()
if limit == "0" or limit == nil then 
say_title("Kontrol Paneli:")
say("Boþ býrakamazsýn ")
else
say_title("Kontrol Paneli:")
say("Limit : "..limit.." ")
say_reward("Onalýyormusun? ")
local s = select("Evet","Hayýr ")
if s == 1 then
pc.setf("warship","bugengelleaq",0)
local sifir = 0
mysql_query10('UPDATE player.warship set kirmizi = '..sifir..'')
mysql_query10('UPDATE player.warship set sari = '..sifir..'')
mysql_query10('UPDATE player.warship set mavi = '..sifir..'')
game.set_event_flag("warshiplimit",limit)
game.set_event_flag("warship",1)
clear_server_timer("warshipbitir")
cleartimer("warshipduyuru")
notice_all("Gemi savaþý baþladý! ")
notice_all("Maksimum oyuncu öldürme limiti : "..limit.." ")
notice_all("Limite ulaþan ilk Ýmparatorluk savaþý kazanýr! ")
notice_all("Gemi Savaþýna Uriel'den katýlabilirsiniz. ")
else
return
end
end
else
say_title("Kontrol Paneli:")
say("Gemi savaþý zaten açýk. ")
end
elseif secim == 2 then
say_title("Gemi Savaþý: ")
say("Ýþlem tamam. ")
clear_server_timer("warshipbitir")
local sifir = 0
mysql_query10('UPDATE player.warship set kirmizi = '..sifir..'')
mysql_query10('UPDATE player.warship set sari = '..sifir..'')
mysql_query10('UPDATE player.warship set mavi = '..sifir..'')
game.set_event_flag("warship",0)
game.set_event_flag("warshiplimit",0)
warp_all_to_village(356, 15)
notice_all("Gemi Savaþý iptal edildi.")
elseif secim == 3 then 
say_title("Gemi Savaþý: ")
say("Harita içinde duyuru geçme aktif. ")
say("Duyuruyu açan GM savaþ boyunca haritadan ")
say("çýkmamalýdýr. ")
cleartimer("warshipduyuru")
loop_timer("warshipduyuru",10)
elseif secim == 4 then
return
end
else
say_title("Kontrol Paneli:")
say("Bu eventi açabilmek için gemi haritasýna git! ")
end
end


when kill with game.get_event_flag("warship") == 1 and pc.get_map_index() == 356 begin
if npc.is_pc() then
if npc.empire != pc.empire then
warship.flagekle()
if game.get_event_flag("warship") == 1 then
local bul = mysql_query10('SELECT * FROM player.warship')
local shinsoo = tonumber(bul.kirmizi[1])
local chunjo = tonumber(bul.sari[1])
local jinno = tonumber(bul.mavi[1])
local limit = game.get_event_flag("warshiplimit")
if shinsoo >= limit then
local bayrak = "Shinsoo"
warship.kazanan(bayrak,1)
elseif chunjo >= limit then 
local bayrak = "Chunjo"
warship.kazanan(bayrak,2)
elseif jinno >= limit then
local bayrak = "Jinno"
warship.kazanan(bayrak,3)
else
return
end
else
end
--
end
end
end

when warshipduyuru.timer begin
if game.get_event_flag("warship") == 1 then
warship.duyuru()
else
cleartimer("warshipduyuru")
end
end

when warshipbitir.server_timer begin
clear_server_timer("warshipbitir")
local sifir = 0
mysql_query10('UPDATE player.warship set kirmizi = '..sifir..'')
mysql_query10('UPDATE player.warship set sari = '..sifir..'')
mysql_query10('UPDATE player.warship set mavi = '..sifir..'')
game.set_event_flag("warship",0)
game.set_event_flag("warshiplimit",0)
warp_all_to_village(356, 15)
end
end
end 