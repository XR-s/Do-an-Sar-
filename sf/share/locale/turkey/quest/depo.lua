quest depo begin
        state start begin
            when letter begin
            send_letter ( "Depoyu a� " )
        end
            when button or info begin
			if tablo_kontrol(pc.get_map_index(),{352, 208, 216, 113, 112, 66, 351, 217}) then 
			chat("Bu haritada depo kullanamazs�n.") 
			return 
			end
		
			if pc.get_map_index() >= 660000 and pc.get_map_index() < 670000 then
			chat("Bu haritada depo kullanamazs�n.") 
			return 
			end
			if pc.get_map_index() >= 2160000 and pc.get_map_index() < 2170000 then
			chat("Bu haritada depo kullanamazs�n.") 
			return 
			end
			if pc.get_map_index() >= 1130000 and pc.get_map_index() < 1140000 then
			chat("Bu haritada depo kullanamazs�n.") 
			return 
			end
			if pc.get_map_index() >= 1120000 and pc.get_map_index() < 1130000 then
			chat("Bu haritada depo kullanamazs�n.") 
			return 
			end
			if pc.get_map_index() >= 3510000 and pc.get_map_index() < 3520000 then
			chat("Bu haritada depo kullanamazs�n.") 
			return 
			end
			if pc.get_map_index() >= 3520000 and pc.get_map_index() < 3530000 then
			chat("Bu haritada depo kullanamazs�n.") 
			return 
			end
		game.open_safebox()
		send_letter ( "Depoyu a� " )
        end       
    end 
end 