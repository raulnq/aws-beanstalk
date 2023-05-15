$serviceName="WeatherWs"
$serviceFolder="C:\services\WeatherWs"
$exe="$serviceFolder\WeatherWs.exe" 
$bin="$PSScriptRoot\ws"

mkdir $serviceFolder -Force

$exists = Get-WmiObject -Class Win32_Service -Filter "Name='$serviceName'"

if($exists)
{
	Stop-Service -Name $serviceName -Force 

	Start-Sleep -s 5

	sc.exe delete $serviceName

	Start-Sleep -s 5
}

Copy-Item "$bin\*" $serviceFolder -Recurse -Force

New-Service -Name $serviceName -BinaryPathName $exe

Start-Service -Name $serviceName