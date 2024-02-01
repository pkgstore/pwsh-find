@{
  RootModule = 'PkgStore.Find.psm1'
  ModuleVersion = '0.0.1'
  GUID = '90b5df0b-3fd1-4ce4-bca4-8d62e50f322d'
  Author = 'Kai Kimera'
  CompanyName = 'iHub TO'
  Copyright = '(c) 2023 iHub TO. All rights reserved.'
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
