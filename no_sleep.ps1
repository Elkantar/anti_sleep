<#
Nom : no_sleep.ps1
Auteur : Elkantar(Thibault Samson)
Description : Empêche la mise en veille Windows
#>

Add-Type -AssemblyName System.Windows.Forms

<#=======================Print=======================#>
Write-Host "=====================================" -ForegroundColor Cyan
Write-Host "        MODE ANTI-MISE EN VEILLE      " -ForegroundColor Green
Write-Host "=====================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Ce script empêche la mise en veille du système."
Write-Host "Il simule une activité clavier (touche F15)."
Write-Host ""
Write-Host "POUR ARRETER LE SCRIPT :"
Write-Host "Appuyez sur CTRL + C"
Write-Host "ou fermez cette fenêtre"
Write-Host ""
Write-Host "Anti-sleep actif..." -ForegroundColor Yellow
Write-Host ""
<#=======================anti-sleep=======================#>
while ($true) {
    [System.Windows.Forms.SendKeys]::SendWait("{F15}")
    Start-Sleep -Seconds 30
}