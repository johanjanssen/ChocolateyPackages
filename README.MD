# Chocolatey packages 
This repo contains the source for various Chocolatey packages

# Changing the packages
* Change the files
* Build the package: choco pack
* Test the package (as administrator): choco install [packageName] -dv -s .


# Maintaining packages
* Create a Chocolatey account
* Create an API key in the [account] (https://community.chocolatey.org/account)
* Optionally, for creating packages local, configure the [API key] (https://docs.chocolatey.org/en-us/create/commands/api-key), then inside the directory of the package execute `choco pack` to package the nupkg and `choco push` to push the package to the Chocolatey server.
* Create some public Git repository with a directory for the package, or copy one of my existing directories to your repository
* For GitHub actions configure an [environment] (https://github.com/johanjanssen/ChocolateyPackages/settings/environments) for example called `Push-Packages` with the environment secret `CHOCOLATEY_API_KEY`
* Now create GitHub workflows, such as for [example](https://github.com/johanjanssen/ChocolateyPackages/tree/master/.github/workflows) the ones I used. 
* Note that the `update-chocolatey-packages.yml` only works to automatically update some packages, details can be found in the [updater](https://github.com/johanjanssen/ChocolateyPackages/tree/master/updater) folder. For example it doesn't work for Microsoft packages as I couldn't find an API to automate the process, nowadays the [Disco API] (https://github.com/foojayio/discoapi) could be used.
* To manually update an existing package:
  * Change the `version` field in the `*.nuspec` file
  * Change the `url` and `checksum` in the `chocolateyinstall.ps1` in the `tools` directory for MSI files
  * Alternatively, change all the *.ps1 files in the `tools` directory for zip files
* To create new packages
  * Copy an existing package directory
  * Change the `id`, `version`, `packageSourceUrl` and `title` and other fields if needed in the `*.nuspec` file. I also recommend changing the name of the `*.nuspec` file, so it's easier to recognize in an editor when you're working on multiple packages
  * Change the `url` and `checksum` in the `chocolateyinstall.ps1` in the `tools` directory for MSI files
  * Alternatively, change all the *.ps1 files in the `tools` directory for zip files

# Notes
* Packages are approved by moderators, if packages are trusted this goes automatically. If a package is not trusted it can take some time.

 
