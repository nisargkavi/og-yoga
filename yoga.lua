local a={
    [1]={enter=vector3(-1497.312,829.493,181.613),
    mat=vector4(-1496.948,828.353,181.624,183.451)},
    [2]={enter=vector3(-1495.748,829.987,181.611),
    mat=vector4(-1495.347,829.098,181.623,206.668)},
    [3]={enter=vector3(-1493.391,830.833,181.61),
    mat=vector4(-1493.182,829.801,181.623,191.704)},
    [4]={enter=vector3(-1491.835,831.305,181.61),
    mat=vector4(-1491.527,830.35,181.624,202.751)}}
    
    local function b()
        local c=GetEntityCoords(PlayerPedId())
        local d=1000
        local e
        for f=1,#a do local g=#(c-a[f].enter)
            if g<d then d=g
                e=f 
            end end
            return d,e end
            local h=false
            Citizen.CreateThread(function()
                while true do 
                    Citizen.Wait(0)
                    local i,j=b()
                    if h then
                        if i>5 then
                            --xd
                        end
                    else
                     --   Citizen.Wait(0)
                      if not IsPedInAnyVehicle(PlayerPedId()) then
                        if not IsEntityPlayingAnim(PlayerPedId(),'amb@world_human_yoga@male@base','base_a',3) then
                          if i<1.5 then 
                                DrawText3D(a[j].enter.x,a[j].enter.y,a[j].enter.z, "Press To [E] Yoga")
                                if IsControlJustReleased(0,38)then 
                                champ()
                                end
                            elseif i<2.7 then
                                DrawText3D(a[j].enter.x,a[j].enter.y,a[j].enter.z, "Do Yoga!!")
                            end end
                        else 
                            Citizen.Wait(1000)
                        end end end end)
                        local k=false
                        AddEventHandler('og-yoga:removeStress',function()
                            if k then return end
                            k=true
                            while h do
                        Citizen.Wait(2000)
                                if h then 
                                    Citizen.Wait(800)
                                TriggerServerEvent('qb-hud:Server:RelieveStress', math.random(10, 15))
            end end
        k=false 
    end)
    
    
function champ()
    local h = true
    FreezeEntityPosition(PlayerPedId(),true)
    local m=PlayerPedId()
    loadanim("amb@world_human_yoga@male@base")
    TaskPlayAnim(m,"amb@world_human_yoga@male@base","base_a",1.0,1.0,-1,8,0,0,0,0)
    if not IsEntityPlayingAnim(m,'amb@world_human_yoga@male@base','base_a',3) then 
        TaskPlayAnim(m,'amb@world_human_yoga@male@base','base_a',1.0,1.0,-1,8,-1,0,0,0)
    end
end
    
    
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(10000)
        local m=PlayerPedId()
        if IsEntityPlayingAnim(m,'amb@world_human_yoga@male@base','base_a',3) then 
            TriggerServerEvent('qb-hud:Server:RelieveStress', math.random(10, 15))
        end
        local h = false
    end
end)
    
    
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local m=PlayerPedId()
        if IsEntityPlayingAnim(m,'amb@world_human_yoga@male@base','base_a',3) then 
        htext("Press H to Stop Doing Yoga")
    if IsControlJustReleased(0,74) then
        ClearPedTasksImmediately(PlayerPedId())
        FreezeEntityPosition(PlayerPedId(),false)      
         end
        end
    end
end)

Citizen.CreateThread(function()
    local blip = AddBlipForCoord(-1539.099, 884.9119)
    SetBlipSprite (blip, 197)
    SetBlipDisplay(blip, 4)
    SetBlipScale  (blip, 0.9)
    SetBlipAsShortRange(blip, true)
    SetBlipColour(blip, 4)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName("Yoga")
    EndTextCommandSetBlipName(blip)
end)
    
htext = function(msg)
    BeginTextCommandDisplayHelp('STRING')
    AddTextComponentSubstringPlayerName(msg)
    EndTextCommandDisplayHelp(0, false, true, -1)
end
    
function loadanim(dict)
    while (not HasAnimDictLoaded(dict)) do
        RequestAnimDict(dict)
        Citizen.Wait(5)
    end
end
    
function DrawText3D(x, y, z, text)
    SetTextScale(0.32, 0.32)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x,y,z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 400
    DrawRect(0.0, 0.0+0.0110, 0.017+ factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end