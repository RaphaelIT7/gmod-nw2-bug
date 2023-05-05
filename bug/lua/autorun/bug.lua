function BreakNW2(stop)
    local ent = ents.Create("testing")
    ent:Spawn()

    timer.Simple(1, function()
        ent:Remove()
        if !stop then
			BreakNW2(true)
        end

        timer.Simple(0.5, function()
            local ent2 = ents.Create("testing_2")
            ent2:Spawn()
            timer.Simple(1, function()
                ent2:Remove()
            end)
        end)
    end)
end

hook.Add("PlayerInitialSpawn", "", function()
   	timer.Simple(5, function()
    	BroadcastLua([[hook.Add("EntityNetworkedVarChanged", "", function(...) 
    		print(...) 
    	end)]])

    	BreakNW2(false)
    end)
end)