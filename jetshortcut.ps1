$APPDATA = $env:LOCALAPPDATA
$USERS = @(Get-ChildItem C:\Users\ -Name)

foreach ($USER IN $USERS) {
  if ($USER -eq 'Public') {
    $UPATCH = "C:\Users\$USER\Desktop\JETBRAINS TOOLBOX"
    write-host $USER
    $APPDATAJET = "$APPDATA\JetBrains\Toolbox\bin\jetbrains-toolbox.exe"
    New-Item -ItemType SymbolicLink -Path $UPATCH -Target $APPDATAJET
  }
  else {
    
  }
}
