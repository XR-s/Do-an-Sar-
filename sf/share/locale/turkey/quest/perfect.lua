quest perfect begin
state start begin
when 50512.use begin
if pc . level < 20 then
say_title ( " Perfect Y�z���: " )
say ( " Perfect en �st duzey beceri sanat�d�r. " )
say ( " Buna hen�z haz�r de�ilsin. " )
say ( " 20. seviye'ye ula�t���nda tekrar dene. " )

if pc . count_item ( 50512 ) < 1 then 
say_title ( " Perfect Y�z���: " ) 
say ( " Envanterinde Perfect Y�z�k yok. " ) 
return 
end

local main_set = select ( "Tamam")

else

say_title ( " Perfect Y�z���: " )
say ( " Perfect en �st d�zey beceri sanat�d�r. " )
say ( " Seni geli�tirmeliyim." )

if pc . count_item ( 50512 ) < 1 then 
say_title ( " Perfect Y�z��� " ) 
say ( "Envanterinde Perfect Y�z�k yok. " ) 
return 
end

local opzioni = select ( " Evet " , " Hay�r " )

if opzioni == 1 then

if pc . gold < 1000000 then

say_title ( " Perfect Y�z���: " )
say ( "1.000.000 yang gerekli." )

if pc . count_item ( 50512 ) < 1 then 
say_title ( " Perfect Y�z���: " ) 
say ( "Envanterinde Perfect Y�z�k yok. " ) 
return 
end

local main_set = select ( "Tamam")

else

local skillp = select (" Sava��� "," Ninja "," Sura "," �aman "," Vazge� ")

if skillp == 1 then

pc.set_skill_level (1,40)
pc.set_skill_level (2,40)
pc.set_skill_level (3,40)
pc.set_skill_level (4,40)
pc.set_skill_level (5,40)
pc.set_skill_level (6,40)
pc.set_skill_level (16,40)
pc.set_skill_level (17,40)
pc.set_skill_level (18,40)
pc.set_skill_level (19,40)
pc.set_skill_level (20,40)
pc.set_skill_level (21,40)
pc.change_money( -1000 )
pc.removeitem(50512,1)

elseif skillp == 2 then

pc.set_skill_level (31,40)
pc.set_skill_level (32,40)
pc.set_skill_level (33,40)
pc.set_skill_level (34,40)
pc.set_skill_level (35,40)
pc.set_skill_level (36,40)
pc.set_skill_level (46,40)
pc.set_skill_level (47,40)
pc.set_skill_level (48,40)
pc.set_skill_level (49,40)
pc.set_skill_level (50,40)
pc.set_skill_level (51,40)
pc.change_money( -1000 )
pc.removeitem(50512,1)

elseif skillp == 3 then

pc.set_skill_level (61,40)
pc.set_skill_level (62,40)
pc.set_skill_level (63,40)
pc.set_skill_level (64,40)
pc.set_skill_level (65,40)
pc.set_skill_level (66,40)
pc.set_skill_level (76,40)
pc.set_skill_level (77,40)
pc.set_skill_level (78,40)
pc.set_skill_level (79,40)
pc.set_skill_level (80,40)
pc.set_skill_level (81,40)
pc.change_money( -1000 )
pc.removeitem(50512,1)

elseif skillp == 4 then

pc.set_skill_level (91,40)
pc.set_skill_level (92,40)
pc.set_skill_level (93,40)
pc.set_skill_level (94,40)
pc.set_skill_level (95,40)
pc.set_skill_level (96,40)
pc.set_skill_level (106,40)
pc.set_skill_level (107,40)
pc.set_skill_level (108,40)
pc.set_skill_level (109,40)
pc.set_skill_level (110,40)
pc.set_skill_level (111,40)
pc.change_money( -1000 )
pc.removeitem(50512,1)

elseif skillp == 5 then

return
end

say_title ( " Perfect Y�z���: " )
say ( " Art�k t�m becerilerin Perfect Master g�c�nde." )
end

elseif opzioni == 2 then

say_title ( " Perfect Y�z���: " )
say ( " Daha sonrada bu i�lemi gercekle�tirebilirim. " )
end
end

end

end
end