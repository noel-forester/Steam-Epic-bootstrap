# Steam-Epic-bootstrap

1. copy from shortcut url to line #2
Start-Process "copy from shortcut url"

2. copy epicgames game .exe file directry path to line #5
$tgt_dir = "Gamefile Directory(ex:F\EPIC Games\game)"

3. edit the .ps1 filename

4. add non steam game
C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe

5. edit steam shortcut target
"C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe" -ExecutionPolicy Bypass -File "steamepic_bootstrap.ps1"

6. enjoy!
