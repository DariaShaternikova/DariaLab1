# Приветствие
Write-Host "Лабораторная работа по СУРПО" -ForegroundColor Green
Write-Host "Работа с удаленными репозиториями Git" -ForegroundColor Yellow

# Текущая дата и время
Get-Date | Format-List

# Информация о системе
Get-ComputerInfo | Select-Object WindowsProductName, WindowsVersion, OsHardwareAbstractionLayer
