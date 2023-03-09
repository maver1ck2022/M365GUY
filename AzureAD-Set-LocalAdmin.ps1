#Author: James Millard
#Date: 09/03/2023
#Note: The purpose of this script is assigned a logged on user to the local administrator roll.
#This should be assigned to the device and once executed the device removed from the assigning group to prevent accidental deployments.


Add-LocalGroupMember -Group "Administrators" -Member (Get-WMIObject -ClassName Win32_ComputerSystem).Username
New-Item -Path "C:\Windows\debug\AAD-Admin.txt"