# Package Sync for Atom

Synchronizes packages installed between computers by installing the packages listed in a configuration file.

## Usage

Package Sync reads `~/.atom/packages.cson`, compares what is in there to the list of available packages and installs any packages that it finds are missing.

### Commands

* `package-sync:create-package-list` &mdash; Creates the `~/.atom/packages.cson` file if it does not already exist
* `package-sync:open-package-list` &mdash; Opens the `~/.atom/packages.cson` in a new tab
* `package-sync:sync` &mdash; Syncs between the package list and the installed packages
