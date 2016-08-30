quest anti_exp begin
	state start begin
		when login begin
			if pc.getqf("antiexp") == 1 then
				pc.block_exp()
				chat("Anti EXP hala açýk.")
			end
		end
		when 40003.use begin
			if pc.getqf("antiexp") == 0 then
				pc.block_exp()
				pc.setqf("antiexp", 1)
				chat("Anti EXP açýldý. Artýk, EXP kazanmayacaksýn.")
			elseif pc.getqf("antiexp") == 1 then
				pc.unblock_exp()
				pc.setqf("antiexp", 0)
				chat("Anti EXP kapatýldý. Artýk, EXP kazanabilirsin.")
			end
		end
	end
end
