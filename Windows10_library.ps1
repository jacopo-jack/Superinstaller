# lo script mostra un menu di scelta
$choice = Read-Host "Scegli un'opzione (1.Office, 2.Developement, 3.Esci dal programma)"
if ($choice -eq "1") {
    # scaricherà in automatico i programmi da ufficio se non presenti, altrimenti li aggiorna
     $office = @{
        msoffice = ''
        libreoffice = ''
        acrobatreader = ''
        teamviewer = ''
        gimp = ''
        inkscape = ''
        evernote = ''
        googledrive = ''
        trello = ''
     }
    $paths =  @('C:\', 'D:\') # se presenti altri hdd o server inserire qui i percorsi
    foreach($key in $office.Keys){
        $name = $key
        $version = $office[$key]
        choco find $name --version $version 
    }
    foreach ($path in $paths) {
        foreach ($file_name in $file_names) {
          $full_path = Join-Path $path $file_name
          if (Test-Path $full_path) {
            Write-Host "$full_path found."
          } else {
            Write-Host "$full_path not found."
          }
        }
    }
} elseif ($choice -eq "2") {
    # stessa logica del primo foreach
    $packages =@{
       sublimetext = ''
       adobexd  = ''
       sketch = ''
       filezilla = ''
       gimp = ''
       inkscape = ''
       xampp = ''
  }
  $paths = @('C:\', 'D:\') # stesso discorso
  foreach($key in $packages.Keys){
    $name = $key
    $version = $paxkages[$key]
    choco find $name --version $version 
    choco find package-name --log "C:\Users\jacopo\Desktop\web_batch\logs"

}
foreach ($path in $paths) {
  foreach ($file_name in $file_names) {
    $full_path = Join-Path $path $file_name
    if (Test-Path $full_path) {
      Write-Host "$full_path found."
    } else {
      Write-Host "$full_path not found."
    }
  }
}
} elseif ($choice -eq "3") {
    # esegui l'opzione 3
} else {
    Write-Host "Scelta non valida"
}





