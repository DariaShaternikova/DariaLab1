function Get-Greeting {
    param([string] = "Дарья Шатерникова 2")
    Write-Output "Привет, ! Добро пожаловать в проект."
}

function Get-ProjectInfo {
    Write-Output "Проект: Основной проект"
    Write-Output "Версия: 1.0"
    Write-Output "Контрибьютор: [Дарья Шатерникова 2]"
}
