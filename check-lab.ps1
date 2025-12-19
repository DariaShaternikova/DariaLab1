# Итоговый проверочный скрипт
Write-Host "=== Проверка лабораторной работы ===" -ForegroundColor Cyan

# 1. Проверяем настройки Git
Write-Host "
1. Настройки Git:" -ForegroundColor Yellow
git config --global user.name
git config --global user.email

# 2. Проверяем статус репозитория
Write-Host "
2. Статус репозитория:" -ForegroundColor Yellow
git status

# 3. Проверяем историю коммитов
Write-Host "
3. История коммитов:" -ForegroundColor Yellow
git log --oneline -5

# 4. Проверяем удаленные репозитории
Write-Host "
4. Удаленные репозитории:" -ForegroundColor Yellow
git remote -v

# 5. Проверяем содержимое репозитория
Write-Host "
5. Содержимое репозитория:" -ForegroundColor Yellow
Get-ChildItem -Recurse | Select-Object Name, Length, LastWriteTime

# 6. Запускаем созданные скрипты
Write-Host "
6. Запуск скриптов:" -ForegroundColor Yellow
if (Test-Path "system-info.ps1") {
    .\system-info.ps1
}

if (Test-Path "colleague-feature.ps1") {
    .\colleague-feature.ps1
}

Write-Host "
=== Проверка завершена ===" -ForegroundColor Cyan
