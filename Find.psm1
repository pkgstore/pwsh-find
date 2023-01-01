function Find-CreationTime() {
  <#
    .SYNOPSIS
      Search files by creation date (seconds).
    .DESCRIPTION
  #>

  [CmdletBinding()]

  Param(
    [Parameter(
      Mandatory,
      HelpMessage=""
    )]
    [Alias("P")]
    [string]$Path,

    [Parameter(
      Mandatory,
      HelpMessage="Creation expired time (in seconds). E.g.: '5270400'. Default: 61 day (5270400 sec.)."
    )]
    [Alias("T")]
    [long]$Time = 5270400
  )

  Get-ChildItem -Path "$($Path)" -Recurse
    | Sort-Object -Property "LastAccessTime"
    | Where-Object { (-not $_.PSIsContainer) -and ($_.CreationTime -gt (Get-Date).AddSeconds(-$($Time))) }
}

function Find-LastWriteTime() {
  <#
    .SYNOPSIS
      Search files by last modified date (seconds).
    .DESCRIPTION
  #>

  [CmdletBinding()]

  Param(
    [Parameter(
      Mandatory,
      HelpMessage=""
    )]
    [Alias("P")]
    [string]$Path,

    [Parameter(
      Mandatory,
      HelpMessage="Last write expired time (in seconds). E.g.: '5270400'. Default: 61 day ('5270400' sec.)."
    )]
    [Alias("T")]
    [long]$Time = 5270400
  )

  Get-ChildItem -Path "$($Path)" -Recurse
    | Sort-Object -Property "LastAccessTime"
    | Where-Object { (-not $_.PSIsContainer) -and ($_.LastWriteTime -gt (Get-Date).AddSeconds(-$($Time))) }
}
