quest gmdrop begin
	state start begin
		when letter with pc.is_gm() begin
			send_letter("GM: Drop ")
		end
		when info or button with pc.is_gm() begin
			clear_server_timer ( "drop_ac" )
			clear_server_timer ( "yine_ac" )
			command("priv 0 1 300 1000")
			command("priv 0 2 300 1000")
			command("priv 0 4 300 1000")
			server_timer("drop_ac",86400)
			send_letter("GM: Droplarý aç ")
		end
		when drop_ac.server_timer begin
			command("priv 0 1 300 1000")
			command("priv 0 2 300 1000")
			command("priv 0 4 300 1000")
			clear_server_timer ( "drop_ac" )
			server_timer("yine_ac",86400)
		end
		when yine_ac.server_timer begin
			command("priv 0 1 300 1000")
			command("priv 0 2 300 1000")
			command("priv 0 4 300 1000")
			clear_server_timer ( "yine_ac" )
			server_timer("drop_ac",86400)
		end
	end
end
