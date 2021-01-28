
function InitKingsNpc()
    local world = "NEWWORLD\\KOLONIEDM.ZEN";
    print("--------------------");
    print("Init KillTheKing NPCs in "..world);
    print("--------------------");
    
    
    SpawnNPC(RoterGardist(), "FP_SWEEP_OC_02", world);
    SpawnNPC(BlauGardist(), "OCR_MAINGATE_INSIDE", world);
    SpawnNPC(GruenGardist(), "OCR_ARENABATTLE", world);
    SpawnNPC(GelbGardist(), "FP_CAMPFIRE_F_2", world);
    SpawnNPC(OrangeGardist(), "FP_STAND_A_OC_45", world);
    SpawnNPC(LilaGardist(), "OCR_NORTHGATE_RAMP_ATOP", world);


    ALTor1 = Vob.Create("EVT_OC_MAINGATE02_02.3DS","NEWWORLD\\KOLONIEDM.ZEN",0,0,0); 
    ALTor1:SetPosition( 4264.92,-570.48,-5275.05); --68185,3865,-20520 Zielposition
    ALTor1:SetRotation(0,-20,0);
        
    ALTor2 = Vob.Create("EVT_OC_MAINGATE01_01.3DS","NEWWORLD\\KOLONIEDM.ZEN",0,0,0);
    ALTor2:SetPosition(-6914.14,-1023.24,5409.60); --68185,3865,-20520 Zielposition
    ALTor2:SetRotation(90,150,0);
	
	print("KillTheKing NPCs sind gespawnt in "..world)
end

function InitKhorinisKTKNPC()
    local world = "NEWWORLD\\KHORINISDM.ZEN";
    print("--------------------");
    print("Init KillTheKing NPCs in "..world);
    print("--------------------");
    
    SpawnNPC(RoteMiliz(), "FP_STAND_HAGEN", world);
    SpawnNPC(BlaueMiliz(), "FP_SMALLTALK_CITY_26", world);
    SpawnNPC(GrueneMiliz(), "FP_STAND_DARON", world);
    SpawnNPC(GelbeMiliz(), "FP_STAND_CITY_TAVERN_02", world);
    SpawnNPC(OrangeMiliz(), "FP_SMALLTALK_CITY_20", world);
    SpawnNPC(LilaMiliz(), "FP_STAND_CITY_ANDRE", world);

	-- Stadttore
	aVob = Vob.Create("Zugbruecke.3DS","NEWWORLD\\KHORINISDM.ZEN",8014.39,247.43,-6490.53); --static method
	aVob:SetPosition(8014.39,247.43,-6490.53); --method of object
	aVob:SetRotation(90,8,0);

	bVob = Vob.Create("Zugbruecke.3DS","NEWWORLD\\KHORINISDM.ZEN",10701.80,249.27,-5965.02); --static method
	bVob:SetPosition(10706.74,247.66,5965.02); --method of object
	bVob:SetRotation(90,236,0);
	
	print("KillTheKing NPCs sind gespawnt in "..world)
end

print("Loaded LUA file   " .. debug.getinfo(1).source)