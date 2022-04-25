@ECHO OFF
Rem burası yorum satırı asagidaki kod calisirken kodların gösterilmesini kapatıyor bu kod laptop moduna göre güç seçeneklerini degistiriyor

set pil=7fee23b1-5dd8-465d-9d71-fc863fd27525
set dengeli=381b4222-f694-41f0-9685-ff5bb260df2e
set turbo=fe29195a-0893-4e81-a725-2fcaa1e543a4

for /f "tokens=3*" %%i in ('REG QUERY HKEY_LOCAL_MACHINE\SOFTWARE\OEM\GamingCenter2\MyFan3\ /v FanMode') do set /A fanMode=%%i

if %fanMode%==0 powercfg /s %dengeli%
if %fanMode%==1 powercfg /s %pil%
if %fanMode%==2 powercfg /s %turbo%

