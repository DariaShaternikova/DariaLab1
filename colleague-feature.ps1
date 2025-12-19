# Дополнительный функционал
# Добавлен коллегой

function Get-SystemSummary {
    param(
        [switch]
    )
    
     = @{
        User = dasha
        Computer = ASH-DESKWORK
        OS = (Get-CimInstance Win32_OperatingSystem).Caption
        Date = Get-Date
    }
    
    if () {
        ['Memory'] = (Get-CimInstance Win32_ComputerSystem).TotalPhysicalMemory / 1GB
        ['Processors'] = (Get-CimInstance Win32_ComputerSystem).NumberOfLogicalProcessors
    }
    
    return New-Object PSObject -Property 
}

# Вызов функции
Get-SystemSummary
