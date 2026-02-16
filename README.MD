# 🖥️ Anti-Sleep Windows 11

![PowerShell](https://img.shields.io/badge/PowerShell-5%2B-blue)
![Windows](https://img.shields.io/badge/Windows-11-blue)
![Status](https://img.shields.io/badge/Status-Stable-success)

Script PowerShell permettant d’empêcher la mise en veille automatique de Windows 11 en simulant une activité clavier invisible.

---

## 📌 Présentation

**Anti-Sleep** est un script PowerShell léger qui empêche :
- la mise en veille du système
- l’extinction automatique de l’écran

Il simule une touche clavier virtuelle (**F15**, inexistante physiquement) toutes les 30 secondes, sans perturber l’utilisateur.

---

## 🚀 Fonctionnalités

- ✅ Empêche la mise en veille
- ✅ Aucun mouvement de souris
- ✅ Aucune modification système
- ✅ Invisible pour l’utilisateur

---

## 📄 Script

```powershell
Add-Type -AssemblyName System.Windows.Forms

Write-Host "=====================================" -ForegroundColor Cyan
Write-Host "        MODE ANTI-MISE EN VEILLE      " -ForegroundColor Green
Write-Host "=====================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Ce script empêche la mise en veille du système."
Write-Host "Il simule une activité clavier (touche F15)."
Write-Host ""
Write-Host "POUR ARRETER LE SCRIPT :"
Write-Host "→ Appuyez sur CTRL + C"
Write-Host "→ ou fermez cette fenêtre"
Write-Host ""
Write-Host "Anti-sleep actif..." -ForegroundColor Yellow
Write-Host ""

while ($true) {
    [System.Windows.Forms.SendKeys]::SendWait("{F15}")
    Start-Sleep -Seconds 30
}
````
# ▶️ Utilisation

## 1️⃣ Lancer le script
````
powershell -ExecutionPolicy Bypass -File no_sleep.ps1`
````
ou double clic sur launcher.bat
## 2️⃣ Arrêter le script
````
CTRL + C
````
ou fermer la fenêtre PowerShell

# ⚠️ Limitations

Ne contourne pas les politiques IT d’entreprise

Fonctionne uniquement si la session Windows est ouverte

Ne remplace pas un réglage d’alimentation permanent

# 🧠 Cas d’usage

Réunions longues

Formations en ligne

Présentations

Téléchargements prolongés

Machines de test

# 🛠️ Technologies

PowerShell 5+

Windows 11

.NET Framework

# ✨ Auteur


Développé par [Elkantar](https://github.com/Elkantar) (Thibault Samson)
