$installerFireFox = "Firefox Setup 72.0.2.exe"

# Firefox�̐ݒ�
if (!(Test-Path $env:TEMP/$installerFireFox)) {
    # Firefox�_�E�����[�h
    # https://support.mozilla.org/ja/kb/install-older-version-of-firefox#w_ayauadaacaadchauceckcoacuualaaaoaakcouagcackaicdchagaeaeaeaaaoaaaoaoka
    # Firefox 72.0.2 64-bit (���{��)
    # https://download-installer.cdn.mozilla.net/pub/firefox/releases/72.0.2/win64/ja/Firefox%20Setup%2072.0.2.exe

    Write-Output "Firefox���_�E�����[�h���܂�"
    Invoke-WebRequest -Uri https://download-installer.cdn.mozilla.net/pub/firefox/releases/72.0.2/win64/ja/Firefox%20Setup%2072.0.2.exe -OutFile $env:TEMP/$installerFireFox
}
Start-Process $env:TEMP/$installerFireFox -Verb RunAs -Wait
