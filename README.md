# Automate_Transfer_Scripting

This repo, uses powershell (for windows currently) to transfer large amount of csv and html analysis files from MT4/MT5 terminals to NextCloud repository and then to dropbox. This is needed since we have 
- multiple windows PC and
- each PCs have multiple terminals and
- each terminals have multiple CSVs and HTMLs

that needs to be transferred from MT4/MT5 terminals to Dropbox ultimately.

Overall file transfer looks like below:

**MT4/MT5 Terminals** (Resides in multiple PCs) --> **NextCloudPi** (Single Point of Storage in all PCs) --> **DropBox Log Folder** (Master Location for Analysis)
