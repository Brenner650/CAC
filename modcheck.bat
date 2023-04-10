@echo off
color 4
cls

echo  ---MANDATORY MOD CHECKER---

echo.
echo -Mods missing for Antistasi1 server:

if not exist %ModPath%"@ace" echo @ace NOT FOUND
if not exist %ModPath%"@ACEComRHSAFRF" echo @ACEComRHSAFRF NOT FOUND
if not exist %ModPath%"@ACEComRHSGREF" echo @ACEComRHSGREF NOT FOUND
if not exist %ModPath%"@ACEComRHSUSAF" echo @ACEComRHSUSAF NOT FOUND
if not exist %ModPath%"@AdvancedRappelling" echo @AdvancedRappelling NOT FOUND
if not exist %ModPath%"@AdvancedUrbanRappelling" echo @AdvancedUrbanRappelling NOT FOUND
if not exist %ModPath%"@Anizay" echo @Anizay NOT FOUND
if not exist %ModPath%"@Antistasi" echo @Antistasi NOT FOUND
if not exist %ModPath%"@AWR" echo @AWR NOT FOUND
if not exist %ModPath%"@Blastcore" echo @Blastcore NOT FOUND
if not exist %ModPath%"@CAC_AE1.4" echo @CAC_AE1.4 NOT FOUND
if not exist %ModPath%"@CBA_A3" echo @CBA_A3 NOT FOUND
if not exist %ModPath%"@CUPTerrainsCore" echo @CUPTerrainsCore NOT FOUND
if not exist %ModPath%"@CUPTerrainsMaps" echo @CUPTerrainsMaps NOT FOUND
if not exist %ModPath%"@CUPUnits" echo @CUPUnits NOT FOUND
if not exist %ModPath%"@CUPVehicles" echo @CUPVehicles NOT FOUND
if not exist %ModPath%"@CUPWeapons" echo @CUPWeapons NOT FOUND
if not exist %ModPath%"@DSHouses" echo @DSHouses NOT FOUND
if not exist %ModPath%"@EnhancedMovement" echo @EnhancedMovement NOT FOUND
if not exist %ModPath%"@EnhancedMovementRework" echo @EnhancedMovementRework NOT FOUND
if not exist %ModPath%"@KunduzAfgFD" echo @KunduzAfgFD NOT FOUND
if not exist %ModPath%"@MfHealAbort" echo @MfHealAbort NOT FOUND
if not exist %ModPath%"@RealEngine" echo @RealEngine NOT FOUND
if not exist %ModPath%"@RHSAFRF" echo @RHSAFRF NOT FOUND
if not exist %ModPath%"@RHSGREF" echo @RHSGREF NOT FOUND
if not exist %ModPath%"@RHSUSAF" echo @RHSUSAF NOT FOUND
if not exist %ModPath%"@SM_Sheds" echo @SM_Sheds NOT FOUND
if not exist %ModPath%"@TembelanIsland" echo @TembelanIsland NOT FOUND
if not exist %ModPath%"@VET_Unflipping" echo @VET_Unflipping NOT FOUND
if not exist %ModPath%"@VirolahtiValtatie7" echo @VirolahtiValtatie7 NOT FOUND

echo.
echo -Mods missing for Antistasi2 server:
setlocal enabledelayedexpansion

REM Read the mod names from CACCore.bat
set "launcherFile=CACCore.bat"
set "antistasi2ModLine="
for /f "usebackq tokens=*" %%i in ("%launcherFile%") do (
    set line=%%i
    if defined line (
        set "line=!line:~1!"
        if "!line:~0,11!"=="set Antistasi2" set "antistasi2ModLine=!line!"
    )
)

REM Extract the mod names from Antistasi2 variable
if defined antistasi2ModLine (
    set "modLine=!antistasi2ModLine:~12!"
    set "modLine=!modLine: =!"
    set "modLine=!modLine:"=!"
    set "modLine=!modLine:-mod=!"
    set "modLine=!modLine:/mod=!"
    set "modLine=!modLine:\;=!"
    set "modLine=!modLine:\,=!"
    set "modLine=!modLine:^,=!"
    set "modLine=!modLine:\)=!"
    set "modLine=!modLine:%%A=!"
    set "modLine=!modLine:-=!"
    set "modLine=!modLine:;=!"
    set "modLine=!modLine:@=!"
    set "modLine=!modLine:~0,-1!"

    REM Generate if not exist... lines for each mod in the -mod= array
    echo - Mods missing for Antistasi2 server:
    echo.
    echo if not exist "%ModPath%@CBA_A3" echo @CBA_A3 NOT FOUND
    for %%m in (!modLine!) do (
        echo if not exist "%ModPath%@%%m" echo @%%m NOT FOUND
    )
    echo.
    echo Checking for missing mods in "Mods\"
    echo Done checking for missing mods.
) else (
    echo Antistasi2 variable not found in %launcherFile%. Please make sure it is defined correctly.
)

endlocal
echo.
echo -Mods missing for Exile Tanoa server:

if not exist %ModPath%"@Exile" echo @Exile NOT FOUND
if not exist %ModPath%"@CBA_A3" echo @CBA_A3 NOT FOUND
if not exist %ModPath%"@DualArms" echo @DualArms NOT FOUND
if not exist %ModPath%"@EnhancedMovement" echo @EnhancedMovement NOT FOUND
if not exist %ModPath%"@EnhancedMovementRework" echo @EnhancedMovementRework NOT FOUND
if not exist %ModPath%"@Extended_Base_Mod" echo @Extended_Base_Mod NOT FOUND
if not exist %ModPath%"@X66-MammothTank" echo @X66-MammothTank NOT FOUND
if not exist %ModPath%"@AdvancedRappelling" echo @AdvancedRappelling NOT FOUND
if not exist %ModPath%"@AdvancedUrbanRappelling" echo @AdvancedUrbanRappelling NOT FOUND

echo.
echo -Mods missing for Exile Escape server:

if not exist %ModPath%"@Exile" echo @Exile NOT FOUND
if not exist %ModPath%"@CBA_A3" echo @CBA_A3 NOT FOUND
if not exist %ModPath%"@DualArms" echo @DualArms NOT FOUND
if not exist %ModPath%"@EnhancedMovement" echo @EnhancedMovement NOT FOUND
if not exist %ModPath%"@EnhancedMovementRework" echo @EnhancedMovementRework NOT FOUND

echo.
echo -Mods missing for King of The Hill serever:

if not exist %ModPath%"@CBA_A3" echo @CBA_A3 NOT FOUND
if not exist %ModPath%"@EnhancedMovement" echo @EnhancedMovement NOT FOUND
if not exist %ModPath%"@EnhancedMovementRework" echo @EnhancedMovementRework NOT FOUND
if not exist %ModPath%"@MfHealAbort" echo @MfHealAbort NOT FOUND

echo.
::echo -Wasteland

::if not exist %ModPath%"@CBA_A3" echo @CBA_A3 NOT FOUND
::if not exist %ModPath%"@EnhancedMovement" echo @EnhancedMovement NOT FOUND
::if not exist %ModPath%"@EnhancedMovementRework" echo @EnhancedMovementRework NOT FOUND
::if not exist %ModPath%"@DualArms" echo @DualArms NOT FOUND
::if not exist %ModPath%"@MfHealAbort" echo @MfHealAbort NOT FOUND
::if not exist %ModPath%"@AdvancedRappelling" echo @AdvancedRappelling NOT FOUND
::if not exist %ModPath%"@AdvancedUrbanRappelling" echo @AdvancedUrbanRappelling NOT FOUND
::if not exist %ModPath%"@Blastcore" echo @Blastcore NOT FOUND

::echo.
::echo -Prairie

::if not exist "vn" echo DLC NOT FOUND
::if not exist %ModPath%"@ace" echo @ace NOT FOUND
::if not exist %ModPath%"@CBA_A3" echo @CBA_A3 NOT FOUND
::if not exist %ModPath%"@EnhancedMovement" echo @EnhancedMovement NOT FOUND
::if not exist %ModPath%"@EnhancedMovementRework" echo @EnhancedMovementRework NOT FOUND
::if not exist %ModPath%"@MfHealAbort" echo @MfHealAbort NOT FOUND
::if not exist %ModPath%"@VET_Unflipping" echo @VET_Unflipping NOT FOUND
::if not exist %ModPath%"@AdvancedRappelling" echo @AdvancedRappelling NOT FOUND
::if not exist %ModPath%"@AdvancedUrbanRappelling" echo @AdvancedUrbanRappelling NOT FOUND
::if not exist %ModPath%"@Blastcore" echo @Blastcore NOT FOUND

::echo.
pause
call CACCore.bat
