# PSConfEU

A module for gathering information about PSConfEU agenda from Sessionize, tested on Windows, Mac and Linux for Windows PowerShell and pwsh


[![.github/workflows/main.yml](https://github.com/PSConfEU/PSConfEU/actions/workflows/main.yml/badge.svg?branch=main)](https://github.com/PSConfEU/PSConfEU/actions/workflows/main.yml) 
[![GitHub release badge](https://badgen.net/github/release/PSConfEU/PSConfEU/stable)](https://github.com/PSConfEU/PSConfEU/releases/latest)
[![PowerShell Gallery](https://img.shields.io/powershellgallery/v/PSConfEU?label=PSConfEU)](https://www.powershellgallery.com/packages/PSConfEU/)  
[![GitHub license badge](https://badgen.net/github/license/PSConfEU/PSConfEU)](https://github.com/PSConfEU/PSConfEU/blob/43423437f831e2844452d482a50864f224f12534/LICENSE)  
[![GitHub releases badge](https://badgen.net/github/releases/PSConfEU/PSConfEU)](https://github.com/PSConfEU/PSConfEU/releases)  
![Ubuntu Linux](https://badgen.net/badge/icon/Ubuntu?icon=terminal&label)[![Linux Tests](https://gist.githubusercontent.com/SQLDBAWithABeard/b1fc4cba1712da56f2673c147f5787f2/raw/linux-badge.svg)](https://github.com/SQLDBAWithABeard/PSConfEU/actions/)  
![macOS](https://badgen.net/badge/icon/macOS?icon=apple&label)[![MacOs Tests](https://gist.githubusercontent.com/SQLDBAWithABeard/b1fc4cba1712da56f2673c147f5787f2/raw/macos-badge.svg)](https://github.com/SQLDBAWithABeard/PSConfEU/actions/)  
![Windows badge](https://badgen.net/badge/icon/windows?icon=windows&label)[![Windows pwsh Tests](https://gist.githubusercontent.com/SQLDBAWithABeard/b1fc4cba1712da56f2673c147f5787f2/raw/winps7-badge.svg)](https://github.com/SQLDBAWithABeard/PSConfEU/actions/)  
 ![Windows badge](https://badgen.net/badge/icon/windows?icon=windows&label)[![Windows PowerShell 5.1 Tests](https://gist.githubusercontent.com/SQLDBAWithABeard/b1fc4cba1712da56f2673c147f5787f2/raw/winps51-badge.svg)](https://github.com/SQLDBAWithABeard/PSConfEU/actions/)  
  


# Usage

The PowerShell module follows normal good procedures 
## Installation

To install the module from the PowerShell Gallery

`Install-Module PSConfEU`

## What Commands?

To identify the commands for the module

`Get-Command -Module PSConfEU`

## Using Commands

To use the commands use the embedded PowerShell help

`Get-Help Get-PSConfEUSchedule`

or

`Get-Help Get-PSConfEUSchedule -Full `

# Get-PSConfEUSchedule

This will return the PSConfEU schedule from  the Sessionize API in a variety of formats

`Get-PSConfEUSchedule -Output excel -Show`  

Gets the PSConfEU Schedule from the Sessionize API and outputs to excel colour coded by session type, opens the file and saves it to the default temp directory 

![image](https://user-images.githubusercontent.com/6729780/208451965-77c25ff9-0f92-45b7-9be1-e163cdd2c28a.png)  

`Get-PSConfEUSchedule  -Output Raw`

Gets the PSConfEU Schedule from the Sessionize API and outputs as json on the screen

![image](https://user-images.githubusercontent.com/6729780/208452166-e333c211-daf0-4daa-854b-b10db105bd0b.png)

`Get-PSConfEUSchedule  -Output csv -Show`

Gets the PSConfEU Schedule from the Sessionize API and outputs to csv, opens the file and saves it to the default temp directory

![image](https://user-images.githubusercontent.com/6729780/208452475-4052fa54-31ee-4646-b919-b9006387726f.png)


`Get-PSConfEUSchedule  -Output object`

Gets the PSConfEU Schedule from the Sessionize API and outputs as a psobject on the screen useful for piping to Write-DbaDatatable for loading into a database

![image](https://user-images.githubusercontent.com/6729780/208452605-9101663f-96ea-445d-a05c-573c8b972ecd.png)

`Get-PSConfEUSchedule  -Output html -Show`

Gets the PSConfEU Schedule from the Sessionize API and outputs to html, opens the file and saves it to the default temp directory

![image](https://user-images.githubusercontent.com/6729780/208453264-fd6aaf52-3523-41dd-b431-848c58ec74c0.png)
