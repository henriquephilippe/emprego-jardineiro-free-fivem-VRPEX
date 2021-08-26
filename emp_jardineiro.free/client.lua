------- CREDITOS  DO  Henryque#2629
---- ESSE SCRIPT FOI DESENVOLVIDO PELO HENRIQUE DA RYCK-STORE, ESSE SCRIPT É OPENSOURCE(DE GRAÇA), ENTÃO A VENDA DO MESMO É TOTALMENTE PROIBIDA


local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
eMP = Tunnel.getInterface("emp_jardineiro")
------- CREDITOS  DO  Henryque#2629
---- ESSE SCRIPT FOI DESENVOLVIDO PELO HENRIQUE DA RYCK-STORE, ESSE SCRIPT É OPENSOURCE(DE GRAÇA), ENTÃO A VENDA DO MESMO É TOTALMENTE PROIBIDA


 rota = {

    vector3(-1379.63, 160.91, 57.65),
    vector3(-1343.69, 177.04, 58.23),
    vector3(-1328.96, 161.2, 57.81),
    vector3(-1276.15, 153.96, 58.61),
    vector3(-1395.05, 132.27, 55.21),
    vector3(-1267.48, 186.84, 60.84),
    vector3(-1217.07, 166.25, 62.23),
    vector3(-1190.13, 189.46, 65.21),
    vector3(-1155.77, 178.42, 63.18),
    vector3(-1127.38, 229.81, 65.8),
    vector3(-1110.88, 188.85, 63.64),
    vector3(-1238.19, 106.64, 56.77),
    vector3(-1190.74, 91.66, 57.66),
    vector3(-1115.92, 76.63, 55.46),
    vector3(-1291.59, 81.25, 54.9),
    vector3(-1333.48, 118.46, 56.64)   

 }
------- CREDITOS  DO  Henryque#2629
---- ESSE SCRIPT FOI DESENVOLVIDO PELO HENRIQUE DA RYCK-STORE, ESSE SCRIPT É OPENSOURCE(DE GRAÇA), ENTÃO A VENDA DO MESMO É TOTALMENTE PROIBIDA


 servico = false
------- CREDITOS  DO  Henryque#2629
---- ESSE SCRIPT FOI DESENVOLVIDO PELO HENRIQUE DA RYCK-STORE, ESSE SCRIPT É OPENSOURCE(DE GRAÇA), ENTÃO A VENDA DO MESMO É TOTALMENTE PROIBIDA


-- INICIAR SERVIÇO
    CreateThread(function()
        while true do
            local sleep = 1000
            ped = PlayerPedId() 
            coordped = GetEntityCoords(ped)
            if not servico then
                local coordblip = vector3(-1348.66, 142.79, 56.44)
                local distancia = #(coordped - coordblip) 
                if distancia < 10 then
                    sleep = 5
                    txt("APERTE ~g~[E]~s~ PARA  ENTRAR EM SERVIÇO",coordblip.x,coordblip.y,coordblip.z,0,0.3,0.3,255,255,255,255) 
                    DrawMarker(1, coordblip.x, coordblip.y, coordblip.z-1,0,2,2,0,0,0,0.9,0.9,0.9,104,255,255,255,false,false,2,1) 
                    if distancia < 2 then
                        if IsControlJustPressed(0, 38) then
                            servico = true
                            car()
                            planta = math.random(#rota)                            
                            TriggerEvent('Notify', 'sucesso', 'Você entrou em serviço.',5000)  
                            blipmap(rota[planta].x, rota[planta].y, rota[planta].z)
                            trabalho()
                        end
                    end
                end
            end
            Wait(sleep)
        end
    end)

------- CREDITOS  DO  Henryque#2629
---- ESSE SCRIPT FOI DESENVOLVIDO PELO HENRIQUE DA RYCK-STORE, ESSE SCRIPT É OPENSOURCE(DE GRAÇA), ENTÃO A VENDA DO MESMO É TOTALMENTE PROIBIDA








------- CREDITOS  DO  Henryque#2629
---- ESSE SCRIPT FOI DESENVOLVIDO PELO HENRIQUE DA RYCK-STORE, ESSE SCRIPT É OPENSOURCE(DE GRAÇA), ENTÃO A VENDA DO MESMO É TOTALMENTE PROIBIDA





    ---trabalhando

    function trabalho()
        CreateThread(function()
            while servico do 
                local sleep = 1000
                    local coordplanta = vector3(rota[planta].x , rota[planta].y , rota[planta].z)
                    local distancia = #(coordped - coordplanta)
                    if distancia < 20 then
                        sleep = 5
                        if IsVehicleModel(GetVehiclePedIsIn(ped, true), 1783355638) then -----CONFIG/ SÓ APARACER O BLIP SE ESTIVER NO VEICULO DO LIXEIRO
                            DrawMarker(1, coordplanta.x , coordplanta.y , coordplanta.z-1, 0, 2, 2, 0, 0, 0, 0.9, 0.9, 0.9, 104, 255, 255, 255, false, false, 2, 1) ---CONFIG DO BLIOPMAKER DA LIXEIRA
                            if distancia < 2 then
                                if IsControlJustPressed(0,38) then                                            
                                    planta = math.random(#rota)                                                                                                     
                                    SetTimeout(250, function() 
                                        eMP.payment()                                                        
                                        RemoveBlip(bliprota)
                                        blipmap(rota[planta].x , rota[planta].y , rota[planta].z)
                                        
                                    end)
                                end
                            end
                        end
                    end
                    sleep = 5
                    if IsControlJustPressed(0,168) then
                        servico = false
                        TriggerEvent('Notify', 'sucesso', 'Você saiu do serviço.',5000) 
                        RemoveBlip(bliprota)
                        DeleteEntity(veiculo )
                    end
                Wait(sleep)
            end
        end)
    end


------- CREDITOS  DO  Henryque#2629
---- ESSE SCRIPT FOI DESENVOLVIDO PELO HENRIQUE DA RYCK-STORE, ESSE SCRIPT É OPENSOURCE(DE GRAÇA), ENTÃO A VENDA DO MESMO É TOTALMENTE PROIBIDA



------- CREDITOS  DO  Henryque#2629
---- ESSE SCRIPT FOI DESENVOLVIDO PELO HENRIQUE DA RYCK-STORE, ESSE SCRIPT É OPENSOURCE(DE GRAÇA), ENTÃO A VENDA DO MESMO É TOTALMENTE PROIBIDA





------- CREDITOS  DO  Henryque#2629
---- ESSE SCRIPT FOI DESENVOLVIDO PELO HENRIQUE DA RYCK-STORE, ESSE SCRIPT É OPENSOURCE(DE GRAÇA), ENTÃO A VENDA DO MESMO É TOTALMENTE PROIBIDA


------- CREDITOS  DO  Henryque#2629
---- ESSE SCRIPT FOI DESENVOLVIDO PELO HENRIQUE DA RYCK-STORE, ESSE SCRIPT É OPENSOURCE(DE GRAÇA), ENTÃO A VENDA DO MESMO É TOTALMENTE PROIBIDA




-- CRIANDO BLIP
function blipmap(x , y , z)
    bliprota = AddBlipForCoord(x,y,z)
    SetBlipSprite(bliprota,143)
    SetBlipColour(bliprota, 24)
    SetBlipScale(bliprota, 0.5)
    SetBlipRoute(bliprota, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("Lixeira")
    EndTextCommandSetBlipName(bliprota)
end
------- CREDITOS  DO  Henryque#2629
---- ESSE SCRIPT FOI DESENVOLVIDO PELO HENRIQUE DA RYCK-STORE, ESSE SCRIPT É OPENSOURCE(DE GRAÇA), ENTÃO A VENDA DO MESMO É TOTALMENTE PROIBIDA

------- CREDITOS  DO  Henryque#2629
---- ESSE SCRIPT FOI DESENVOLVIDO PELO HENRIQUE DA RYCK-STORE, ESSE SCRIPT É OPENSOURCE(DE GRAÇA), ENTÃO A VENDA DO MESMO É TOTALMENTE PROIBIDA


-- texto
function txt(texto, x, y, z, font, s1, s2, r, g, b, a)
    local screen,x_,y_ =  GetScreenCoordFromWorldCoord(x,y,z)
    if screen then
        SetTextFont(font)  
        SetTextScale(s1, s2)
        SetTextColour(r, g, b, a)
        SetTextCentre(1)
        SetTextEntry("STRING")
        AddTextComponentString(texto)
        DrawText(x_,y_)
    end
end

------- CREDITOS  DO  Henryque#2629
---- ESSE SCRIPT FOI DESENVOLVIDO PELO HENRIQUE DA RYCK-STORE, ESSE SCRIPT É OPENSOURCE(DE GRAÇA), ENTÃO A VENDA DO MESMO É TOTALMENTE PROIBIDA

------- CREDITOS  DO  Henryque#2629
---- ESSE SCRIPT FOI DESENVOLVIDO PELO HENRIQUE DA RYCK-STORE, ESSE SCRIPT É OPENSOURCE(DE GRAÇA), ENTÃO A VENDA DO MESMO É TOTALMENTE PROIBIDA


function car()
    local hash = GetHashKey("mower") ------TRASH2 VC SUBSTITUI PELO NOME DO VEICULO QUE VC QUER COLOCAR NO LUGAR, N SE ESQUEÇA DE ALTERAR  A HASH(-1255698084) NA LINHA 67 PELA HASH DO VEICULO NOVO QUE VAI MUDAR
    while not HasModelLoaded(hash) do Wait(10) RequestModel(hash) end
     veiculo = CreateVehicle(hash,-1358.04, 133.5, 56.25, 276.23, true, true)
    SetVehicleNumberPlateText(veiculo, vRP.getRegistrationNumber())
end

------- CREDITOS  DO  Henryque#2629
---- ESSE SCRIPT FOI DESENVOLVIDO PELO HENRIQUE DA RYCK-STORE, ESSE SCRIPT É OPENSOURCE(DE GRAÇA), ENTÃO A VENDA DO MESMO É TOTALMENTE PROIBIDA

------- CREDITOS  DO  Henryque#2629
---- ESSE SCRIPT FOI DESENVOLVIDO PELO HENRIQUE DA RYCK-STORE, ESSE SCRIPT É OPENSOURCE(DE GRAÇA), ENTÃO A VENDA DO MESMO É TOTALMENTE PROIBIDA

