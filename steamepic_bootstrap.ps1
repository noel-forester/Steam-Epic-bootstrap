#shortcut url
Start-Process "copy from shortcut url"

#epicgames game .exe file directory
$tgt_dir = "Gamefile Directory(ex:F\EPIC Games\game)"


##########################################
#do not show errors
$ErrorActionPreference = "silentlycontinue"

#get .exe file names
$fnames = Get-ChildItem $tgt_dir -Filter *.exe -Name
$proc_ary = @()

#remove .exe from name
$i = 0
foreach($j in $fnames){
	$proc_ary += $j.Replace(".exe","")
	$i++
}

#infinity loop
while ($true){

	#reset val
	$noproc = 0
	#for break val
	$exitcnt = $proc_ary.Length
	echo "process run waiting..."
	sleep -seconds 10

	#proc check roop
	foreach($cprocess in $proc_ary){
		try{
			$process = Get-Process $cprocess
			echo "$process"
			$process.WaitForExit()
		} catch {
			$noproc++
		}
	}

	#cant find all process to break
	if ($exitcnt -eq $noproc){
		break
	}

}
