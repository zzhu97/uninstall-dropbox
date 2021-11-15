
$drop = "\Appdata\Roaming\Dropbox"

taskkill /im dropbox.exe /f
& 'C:\Program Files (x86)\Dropbox\Client\DropboxUninstaller.exe' /S -ErrorAction SilentlyContinue

gci -name c:\users | foreach ($_) {
    Remove-Item -recurse -force C:\Users\$_$drop -ErrorAction SilentlyContinue
}
