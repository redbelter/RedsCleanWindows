
#disable windows telling you to make your local account an msa account
Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name Start_AccountNotifications -Value 0

#disable windows recommending shit on the start menu
Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name Start_IrisRecommendations -Value 0

#stop AAD prompting you to join your personal device to a corp. wtf
Set-ItemProperty -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\WorkplaceJoin -Name BlockAADWorkplaceJoin -Value 1

#stop your searches from going to bring, wtf
New-Item 'HKCU:\SOFTWARE\Policies\Microsoft\Windows\Explorer' -Force | New-ItemProperty -Name DisableSearchBoxSuggestions -Value 1 -Force | Out-Null
Set-ItemProperty -Path HKCU:\SOFTWARE\Policies\Microsoft\Windows\Explorer -Name DisableSearchBoxSuggestions -Value 1

#stop it showing you "fun facts" on the lock screen (they are ads)
Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager -Name RotatingLockScreenOverlayEnabled -Value 0
Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager -Name SubscribedContent-338387Enabled -Value 0

#disable widgets, it's shit
New-Item 'HKLM:\SOFTWARE\Policies\Microsoft\Dsh' -Force | New-ItemProperty -Name AllowNewsAndInterests -Value 0 -Force | Out-Null
Set-ItemProperty -Path HKLM:\SOFTWARE\Policies\Microsoft\Dsh -Name AllowNewsAndInterests -Value 0
write-host "done"