quest bakimvar begin
	state start begin
		when login with game.get_event_flag("bakim_var") == 1 and not pc.is_gm() and game.get_event_flag(pc.get_name()) != 1 begin
		notice("Şu anda bakım var. Sunucuya erişim sağlayamazsın!")
		say_title("Bilgi:")
		say("")
		say("Şuan da bakım çalışması yapılmaktadır.")
		say("Detaylı bilgi için facebook sayfasını takip edin.")
		say("")
		command("quit")
		end
	end
end