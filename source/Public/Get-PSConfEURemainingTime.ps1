function Get-PSConfEURemainingTime {
    <#
    .SYNOPSIS
        This PowerShell script retrieves the remaining time until the first or last session of @PSConfEU.

    .DESCRIPTION
        This script checks the PSConfEU Schedule to determine if the event has already started and calculates the remaining time until the first or last session accordingly.

    .EXAMPLE
        Get-PSConfEURemainingTime

        This example command retrieves the remaining time until the first or last session of @PSConfEU.

    .NOTES
        Author: Christian Ritter
        May 2023
    #>
    [CmdletBinding()]
    param (
        
    )
    
    begin {
        $BaseUri = 'https://sessionize.com/api/v2/dkxcjtm2/view/all'
        $Date = Get-Date 
    }
    
    process {
        # Try to retrieve session start times from the API, and handle errors
        try {
            $SessionStarts = (Invoke-RestMethod -Method Get -Uri $BaseUri -ErrorAction Stop).sessions.Startsat |
                             Measure-Object -Minimum -Maximum 
        } catch {
            Write-Error "Could not load sessions from '$BaseUri': $_"
            return
        }
        # Determine whether PSConfEU has started or ended, and display the remaining time
        switch ($Date) {
            {$Date -lt $SessionStarts.Minimum} {
                Write-host "Remaining time till first session(s):"
                (New-TimeSpan -Start $Date -End $SessionStarts.Minimum | Select-Object Days,Hours,Minutes,Seconds)
                return
            }
            {($Date -gt  $SessionStarts.Minimum) -and ($Date -lt  $SessionStarts.Maximum)}{
                Write-host "Remaining time till last session(s):"
                (New-TimeSpan -Start $Date -End $SessionStarts.Maximum| Select-Object Days,Hours,Minutes,Seconds)
                return
            }
            {$Date -gt $lastSession}{
                Write-host "PSConfEU is over"
                Write-Host "see you next year"
                return
            }
            Default {}
        }
    }
    
    end {
        
    }
}