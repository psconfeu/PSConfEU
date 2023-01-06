BeforeAll {

}


Describe "Get-PSConfEUSchedule" {

    Context "When the function is called" {
        Mock -ModuleName PSConfEU Invoke-RestMethod { return 
            [PSCustomObject]@{
               rooms = 'dummyRooms'
           }
       }
        It "Should return a psobject" {
            $result = Get-PSConfEUSchedule -Output object
            $result | Should -BeOfType System.Management.Automation.PSObject
        }

    }
}