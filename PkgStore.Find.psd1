@{
  RootModule = 'PkgStore.Find.psm1'
  ModuleVersion = '1.0.0'
  GUID = '90b5df0b-3fd1-4ce4-bca4-8d62e50f322d'
  Author = 'Kitsune Solar'
  CompanyName = 'v77 Development'
  Copyright = '(c) 2023 v77 Development. All rights reserved.'
  Description = 'Search files by creation date and last modified date.'
  PowerShellVersion = '7.1'
  RequiredModules = @('PkgStore.Kernel')
  FunctionsToExport = @('Find-CreationTime', 'Find-LastWriteTime')
  PrivateData = @{
    PSData = @{
      Tags = @('pwsh', 'find')
      LicenseUri = 'https://github.com/pkgstore/pwsh-find/blob/main/LICENSE'
      ProjectUri = 'https://github.com/pkgstore/pwsh-find'
    }
  }
}
