$subnet = "xxx.xxx.xxx"
$range = 1..255
$timeout = 1000

foreach ($i in $range) {
    $ip = $subnet + "." + $i
    $result = Test-Connection -ComputerName $ip -Count 1 -ErrorAction SilentlyContinue -TimeToLive 5 -BufferSize 32
    if ($result) {
        Write-Host "Host $ip is online."
    }
}
