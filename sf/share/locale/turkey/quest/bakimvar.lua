quest bakimvar begin
	state start begin
		when login with game.get_event_flag("bakim_var") == 1 and not pc.is_gm() and game.get_event_flag(pc.get_name()) != 1 begin
		notice("�u anda bak�m var. Sunucuya eri�im sa�layamazs�n!")
		say_title("Bilgi:")
		say("")
		say("�uan da bak�m �al��mas� yap�lmaktad�r.")
		say("Detayl� bilgi i�in facebook sayfas�n� takip edin.")
		say("")
		command("quit")
		end
	end
end