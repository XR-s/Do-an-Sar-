quest bar_sistem begin
    state start begin
        when 80007.use begin
        if pc . count_item ( 80007 ) < 1 then 
            say_title("Hey ".. pc.get_name() ..".")
            say ( "Envanterinde bar bulunamadı. " )
            end
            say_title("Hey ".. pc.get_name() ..".")
            say ( "400.000.000 yang enavanterine çıkartacaksın." )
            say ( "Emin misin?" )
            local s = select ( "Evet " , "Hayır " ) 
                if s == 1 then
                    local kalan= pc.count_item(80007)
                    if kalan <= 0 then 
                    say_title("Hey ".. pc.get_name() ..".")
                    say ( "Envanterinde bar bulunamadı. " )
                    elseif kalan >= 0 then
                        local anlikyang = pc.get_gold()
                        local barmiktari = 400000000
                        local maxyang = 2000000000
                        if anlikyang+barmiktari >= maxyang then
                        say_title("Kontrol:")
                        say("")
                        say("2.000.000.000'dan fazla yang olacağı için çıkartılamadı. ")
                        else
                        say_reward ( "Envanterine başarıyla çıkartıldı." ) 
                        pc.change_money( barmiktari )
                        pc.removeitem("80007", 1) 
                    end
                end
                else
                end
        end
    end
end
