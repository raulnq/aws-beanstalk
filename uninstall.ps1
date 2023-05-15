$serviceName="WeatherWs"

$exists = Get-WmiObject -Class Win32_Service -Filter "Name='$serviceName'"

if($exists)
{
	Stop-Service -Name $serviceName -Force 

	Start-Sleep -s 5

	sc.exe delete $serviceName

	Start-Sleep -s 5
}