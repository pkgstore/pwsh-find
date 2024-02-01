function Find-CreationTime() {
  <#
    .SYNOPSIS
      Search files by creation date (seconds).

    .DESCRIPTION

    .PARAMETER Path
      Path to directory.
      Alias: '-P'.

    .PARAMETER Time
      Creation expired time (in seconds).
      E.g.: '5270400'.
      Default: '5270400' (61 day - 5270400 sec.).
      Alias: '-T'.

    .EXAMPLE
      Find-CreationTime -P 'D:\Storage' -T 2592000

    .LINK
      Package Store: https://github.com/pkgstore

    .NOTES
      Author: Kai Kimera <mail@kitsune.solar>
  #>

  [CmdletBinding()]

  Param(
    [Parameter(Mandatory)]
    [Alias('P')]
    [string]${Path},

    [Parameter(Mandatory)]
    [Alias('T')]
    [long]${Time} = 5270400
  )

  Get-ChildItem -Path "${Path}" -Recurse
    | Sort-Object -Property 'LastAccessTime'
    | Where-Object { ( -not $_.PSIsContainer ) -and ( $_.CreationTime -lt (Get-Date).AddSeconds( -${Time} ) ) }
}

function Find-LastWriteTime() {
  <#
    .SYNOPSIS
      Search files by last modified date (seconds).

    .DESCRIPTION

    .PARAMETER Path
      Path to directory.
      Alias: '-P'.

    .PARAMETER Time
      Last write expired time (in seconds).
      E.g.: '5270400'.
      Default: '5270400' (61 day - 5270400 sec.).
      Alias: '-T'.

    .EXAMPLE
      Find-LastWriteTime -P 'D:\Storage' -T 2592000

    .LINK
      Package Store: https://github.com/pkgstore

    .NOTES
      Author: Kai Kimera <mail@kitsune.solar>
  #>

  [CmdletBinding()]

  Param(
    [Parameter(Mandatory)]
    [Alias('P')]
    [string]${Path},

    [Parameter(Mandatory)]
    [Alias('T')]
    [long]${Time} = 5270400
  )

  Get-ChildItem -Path "${Path}" -Recurse
    | Sort-Object -Property 'LastAccessTime'
    | Where-Object { ( -not $_.PSIsContainer ) -and ( $_.LastWriteTime -lt (Get-Date).AddSeconds( -${Time} ) ) }
}
