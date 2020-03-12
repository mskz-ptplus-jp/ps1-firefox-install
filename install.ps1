$installerFireFox = "Firefox Setup 72.0.2.exe"

# Firefoxの設定
if (!(Test-Path $env:TEMP/$installerFireFox)) {
    # Firefoxダウンロード
    # https://support.mozilla.org/ja/kb/install-older-version-of-firefox#w_ayauadaacaadchauceckcoacuualaaaoaakcouagcackaicdchagaeaeaeaaaoaaaoaoka
    # Firefox 72.0.2 64-bit (日本語)
    # https://download-installer.cdn.mozilla.net/pub/firefox/releases/72.0.2/win64/ja/Firefox%20Setup%2072.0.2.exe

    Write-Output "Firefoxをダウンロードします"
    Invoke-WebRequest -Uri https://download-installer.cdn.mozilla.net/pub/firefox/releases/72.0.2/win64/ja/Firefox%20Setup%2072.0.2.exe -OutFile $env:TEMP/$installerFireFox
}
Start-Process $env:TEMP/$installerFireFox -Verb RunAs -Wait
