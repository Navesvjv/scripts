@echo off

set /P id=(r/s): 
if %id% == r (
    set numm=20
) else (
    if %id% == s (
        set numm=99
    )
)

set INTERFACE=Ethernet
set IP=192.168.%numm%.99
set NETMASK=255.255.255.0
set GATEWAY=192.168.%numm%.1
set DNS1=8.8.8.8
set DNS2=8.8.4.4

netsh interface ip set address name="%INTERFACE%" static %IP% %NETMASK% %GATEWAY%
netsh interface ipv4 add dnsserver "%INTERFACE%" address=%DNS1%% index=1
netsh interface ipv4 add dnsserver "%INTERFACE%" address=%DNS2%% index=2

exit

