$APPDATA = $env:APPDATA
$USERS = @(Get-ChildItem C:\Users\ -Name)

foreach ($USER IN $USERS) {
  if (-not ($USER -eq 'Public')) {
    $UPATCH = "C:\Users\$USER\Desktop\JET"
    $APPDATAJET = "$APPDATA\Telegram Desktop\Telegram.exe"
    New-Item -ItemType SymbolicLink -Path $UPATCH -Target $APPDATAJET
  }
  else {
    
  }
}

