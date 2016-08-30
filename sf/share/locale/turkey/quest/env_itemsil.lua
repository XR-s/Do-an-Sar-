quest env_itemsil begin
	state start begin
		when login begin
			cmdchat("ItemSil_Index "..q.getcurrentquestindex())
		end
		
		when info or button begin
			cmdchat("InputStringStart")
			local itemIndex = input(cmdchat("get_item_value"))
			item.select_cell(itemIndex)
			local kod = item.get_vnum()
			local adet = item.get_count()
			if(pc.count_item(item.get_vnum()) >= 1 ) then
				pc.remove_item(kod,adet)
				syschat("Envanterinden "..adet.." adet "..item_name(kod).." silindi. ")
			else
				syschat("Envanterinde item mevcut deðil. ")
			end
			cmdchat("InputStringEnd")
		end
	end
end