Removes a bunch of spamware from windows

You should at least look at a high level what this is doing :)
To run, execute the following in powershell with admin rights:

Invoke-Expression(Invoke-WebRequest https://raw.githubusercontent.com/redbelter/RedsCleanWindows/main/cleanwindows.ps1).Content
