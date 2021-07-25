# Environment

* WSL2 (Latest Ubuntu LTS)
* Windows Terminal
* VSCode (TODO: VSCode Setup)
* [Chocolatey](https://chocolatey.org/install)
* FiraCode font `choco install firacode`
* Install ansible
* Run ansible (▀̿Ĺ̯▀̿ ̿)

## WSL2 Specific packages
* `sudo apt install powerline fonts-powerline` - automated in ansible


# Remapping keys in windows

* Download **AutoHotkey** from [here](https://www.autohotkey.com/)
* Install. Now you should get 'AutoHotkey Script' option in 'New' option in mouse right click
* Create a new script & paste the following
```
Capslock::Esc
Esc::Capslock
```

## Run script on startup

* Open run, type `shell:startup` and paste the created file
