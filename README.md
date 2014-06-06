Tiny PowerShell Script to build Mroonga under Windows environment
===

## PowerShell Excecution Policy

Currently, these ps1 are not signed.

So, it need change Excecution Policy to `RemoteSigned`.

Or, execute `batfile\change-policy-vc2010.bat` or `batfile\change-policy-vc2013.bat` with system administrator privileges.

## Project structure

```log
---(source.zip/source-nightly.zip) downloaded by get-mroonga.ps1/get-mroonga-nightly.ps1
 |
 -- batfiles/*.bat # put mroonga bat file
 |
 -- *.ps1
```

## versions.ps1

```powershell
$workDir = [specify workdir]
$mariadbVer = [specify mariaDB version]
$mroongaVer = [specify Mroonga version]
```

## building for Visual Studio 2010 Professional

```powershell
powershell> build-vs2010.ps1
```

## building for Visual Studio 2013 Express

```powershell
powershell> build-vs2013.ps1
```

## execution order ps1 if it executes individually

```bat
powershell> get-mroonga.ps1 # or get-mroonga-nightly.ps1
powershell> unzip.ps1
powershell> prepare-building-mroonga.ps1
powershell> cd <mroonga build working dir>
powershell> <building Mroonga...>
powershell> package-unzip.ps1
powershell> install-mroonga.ps1
powershell> create-mrnzip.ps1
```

### Environment

For Windows 8.1.

### LICENSE

[MIT](LICENSE).
