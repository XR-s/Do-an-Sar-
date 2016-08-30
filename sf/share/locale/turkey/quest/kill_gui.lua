quest killgui begin 
    state start begin 
        when kill begin 
            if npc.is_pc() then 
                local new_point = pc.getqf("empire"..npc.get_empire())+1 
                pc.setqf("empire"..npc.get_empire(), new_point) 
                cmdchat("KillRotReich "..pc.getqf("empire1")) 
                cmdchat("KillGelbReich "..pc.getqf("empire2")) 
                cmdchat("KillBlauReich "..pc.getqf("empire3")) 
            else 
                local new_point = pc.getqf("mob")+1 
                pc.setqf("mob", new_point) 
                cmdchat("KillMob "..pc.getqf("mob")) 
            end 
        end 
        when login begin 
            cmdchat("KillRotReich "..pc.getqf("empire1")) 
            cmdchat("KillGelbReich "..pc.getqf("empire2")) 
            cmdchat("KillBlauReich "..pc.getqf("empire3")) 
            cmdchat("KillMob "..pc.getqf("mob")) 
        end 
    end 
end