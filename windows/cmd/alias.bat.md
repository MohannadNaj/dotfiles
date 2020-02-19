
## My windows aliases list.

### Installation

1- Attaching Aliases to the native command line:

Steps in this [stackoverflow answer](https://stackoverflow.com/a/21040825/4330182).Quoting:

> you may make the alias(es) *persistent* with the following steps,
 
>  1. Create a .bat or .cmd file with your `DOSKEY` commands.
>  2. Run `regedit` and go to `HKEY_CURRENT_USER\Software\Microsoft\Command Processor`
>  3. Add String Value entry with the name `AutoRun` and the *full* path of your .bat/.cmd file.
>   
>     For example, `%USERPROFILE%\alias.cmd`, replacing the initial segment of the path with `%USERPROFILE%` is useful for syncing among> multiple machines.
> > This way, every time cmd is run, the aliases are loaded.


2- Using ConEMU.

[Documentation here](https://conemu.github.io/en/SettingsEnvironment.html).

Settings > Startup > Environment

______
### Aliases

``` bash
@echo off


set PATH=%PATH%;C:\Program Files\Git\cmd


:: Commands

DOSKEY ls=dir
DOSKEY gitcmd="C:\Program Files\Git\bin\sh.exe" --login -i
DOSKEY cat=type
DOSKEY ip=ipconfig
DOSKEY rm=rmdir /S $*$Tdel $*
DOSKEY mkdir=mkdir $1$Tcd $1
DOSKEY clear=cls
DOSKEY touch=copy nul $* > nul
DOSKEY reload=cls$Tcmd cur_console
```