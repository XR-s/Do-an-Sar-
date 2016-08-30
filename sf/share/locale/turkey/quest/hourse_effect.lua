quest DEscape_hourseeffect begin
	state start begin
		----- Asker At -----
		when 50052.use begin
			if get_time()<=pc.getqf("15saniye") then
			syschat("<System> 15 saniye gecmeden atini Cagiramassin!")
			else
			pc.setqf("15saniye", get_time()+15)
			cmdchat("DEscapeZirhliAt")
		end
	end
		----- Asker At -----
		when 50053.use begin
			if get_time()<=pc.getqf("15saniye") then
			syschat("<System> 15 saniye gecmeden atini Cagiramassin!")
			else
			pc.setqf("15saniye", get_time()+15)
			cmdchat("DEscapeAskerAt")
			end
		end
	end
end