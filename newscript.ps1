$cmd1 = "ipconfig /all >> c:\temp\results.txt"
$cmd2 = "netstat -an >> c:\temp\results.txt"
$cmd3 = "netsh wlan show profiles >> c:\temp\results.txt"
$cmd4 = "net accounts >> c:\temp\results.txt"
$cmd5 = "net share >> c:\temp\results.txt"
$cmd6 = "net session >> c:\temp\results.txt"
$cmd7 = "tracert google.com >> c:\temp\results.txt"
$base641 = "[System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('bmV0IHVzZXI=')) >> c:\temp\results.txt"
$base642 = "[System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('bmV0IGdyb3Vw')) >> c:\temp\results.txt"
$base643 = "[System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('bmV0IHNoYXJl')) >> c:\temp\results.txt"
$base644= "[System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('cm91dGUgcHJpbnQ=')) >> c:\temp\results.txt"
$command_array = $cmd1, $cmd2, $cmd3, $cmd4, $cmd5, $cmd6, $cmd7, $base641, $base642, $base643, $base644

for ($i = 0; $i -lt $command_array.Count; $i++) {
	invoke-expression $command_array[$i]
}


echo "starting port scan"
invoke-expression "c:\temp\onedrive.exe -w 1 172.16.100.111 1-200"
echo "finished port scan"