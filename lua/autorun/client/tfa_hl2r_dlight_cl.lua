function ClientDLightThink()
    local PL = LocalPlayer()
    local CT = UnPredictedCurTime()

    if not PL.CL_Lights then
        PL.CL_Lights = {}
    end

    local LightTable = PL.CL_Lights
    local ValidLights = 0

    for _, v in pairs(LightTable) do
        local LIGHT = v[1]
        local Bright = v[2]
        local DestroyTime = v[3]
        local DTTime = v[4]
        local RSize = v[5]
        local Time = (DTTime - CT)
        local MUL = (Time / DestroyTime)
        local BMul = (Bright * MUL)
        local SMul = (RSize * MUL)

        if (LIGHT) and SMul > 0 then
            ValidLights = ValidLights + 1
            LIGHT.Size = SMul
            LIGHT.Decay = 0.1
        end
    end

    if ValidLights <= 0 then
        PL.CL_Lights = {}
    end
end

hook.Add("Think", "ClientDLightThinkHook", ClientLightThink)

function CreateClientDynamicLight(pos, destroytime, color, size, bright)
    local PL = LocalPlayer()
    local CT = CurTime()

    if not PL.CL_Lights then
        PL.CL_Lights = {}
    end

    if not CCL_Count then
        CCL_Count = 0
    end

    CCL_Count = CCL_Count + 1
    PL["CCL_Light" .. CCL_Count] = DynamicLight(CCL_Count + 10000)
    local LIGHT = PL["CCL_Light" .. CCL_Count]
    LIGHT.Pos = pos
    LIGHT.r = (color.r or 255)
    LIGHT.g = (color.g or 255)
    LIGHT.b = (color.b or 255)
    LIGHT.Brightness = (bright or 1)
    LIGHT.Size = (size or 500)
    LIGHT.Decay = 0
    LIGHT.DieTime = CT + (destroytime or 1)
    LIGHT.Style = 0
    local TBL = {LIGHT, (bright or 1), (destroytime or 1), (CT + (destroytime or 1)), (size or 500)}
    table.insert(PL.CL_Lights, TBL)
end

function TFA_HL2R_CreateDLight_LIB(um)
    local PL = LocalPlayer()
    local Pos = net.ReadVector()
    local Die = net.ReadFloat()
    local Col = net.ReadVector()
    local Size = net.ReadFloat()
    local Bright = net.ReadFloat()
    CreateClientDynamicLight(Pos, Die, Color(Col.x, Col.y, Col.z, 255), Size, Bright)
end

net.Receive("TFA_HL2R_CreateClientDynamicLight", TFA_HL2R_CreateDLight_LIB)