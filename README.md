# Friday Night Funkin' HD - Psych Engine Port Android
Welcome to FNF HD psych engine port, this port was made for having a better experience playing FNF HD, in this port there's new options, new art and more! Remember i'm not the owner of FNF HD, FNF HD is made by Kolsan and the HD team, full credits to them and their hard work.

## Installation:
You must have Haxe 4.2.5 (https://haxe.org/download/version/4.2.5/).

Follow a Friday Night Funkin' Psych Engine source code compilation tutorial, after this you will need to install LuaJIT.

To install LuaJIT do this: `haxelib git linc_luajit https://github.com/nebulazorua/linc_luajit` on a Command prompt/PowerShell

...Or if you don't want your mod to be able to run .lua scripts, delete the "LUA_ALLOWED" line on Project.xml


If you get an error about StatePointer when using Lua, run `haxelib remove linc_luajit` into Command Prompt/PowerShell, then re-install linc_luajit.

If you want video support on your mod, simply do `haxelib install hxCodec` on a Command prompt/PowerShell

otherwise, you can delete the "VIDEOS_ALLOWED" Line on Project.xml

# Build instructions For Android

1. Download
* <a href = "https://www.oracle.com/java/technologies/javase/javase-jdk8-downloads.html"> JDK </a> - download jdk 8
* <a href = "https://developer.android.com/studio"> Android Studio </a>
* <a href = "https://developer.android.com/ndk/downloads/older_releases?hl=fi"> NDK </a> - download the r15c

2. Install JDK, Android Studio 
Unzip ndk (ndk does not need to be installed)

3. We need to set up Android Studio for this go to android studio and find android sdk (in settings -> Appearance & Behavior -> system settings -> android sdk)
![andr](https://user-images.githubusercontent.com/59097731/104179652-44346000-541d-11eb-8ad1-1e4dfae304a8.PNG)
![andr2](https://user-images.githubusercontent.com/59097731/104179943-a9885100-541d-11eb-8f69-7fb5a4bfdd37.PNG)

4. And run command `lime setup android` in power shell / cmd
You need to insert the program paths

As in this picture (use jdk, not jre)
![lime](https://user-images.githubusercontent.com/59097731/104179268-9e80f100-541c-11eb-948d-a00d85317b1a.PNG)

5. You Need to install extension-androidtools, extension-videoview and to replace the linc_luajit

To Install Them You Need To Open Command prompt/PowerShell And To Tipe
```cmd
haxelib git extension-androidtools https://github.com/MaysLastPlay77/extension-androidtools.git

haxelib git extension-videoview https://github.com/MaysLastPlay77/extension-videoview.git

haxelib remove linc_luajit

haxelib git linc_luajit https://github.com/Sirox228/linc_luajit.git

```

6. Open project in command line `cd (path to fnf source)`
And run command `lime build android -final`
Apk will be generated in this path (path to source)\export\release\android\bin\app\build\outputs\apk\debug

## Credits:
* Nuno Filipe Studios - Main porter, coder, animator, Android Port help, Mac Port, Linux Port, 32bits version
* Remy And Ava - Mobile optimizer, gamejolt link
* DANIZIN - Old Android Port
* FNF BR - Android Port
* MaysLastPlay - Android Port
* DMMaster 636 - Artist, coder, animator
* mariodevintoons - New HD Mall Darnell Artist
* Galax - Dev Build Tester
* JorgeX_YT - Dev Build Tester

### Used some codes from
* Wednesday's Infidelity Team - Used dodge keybinds text code
* Arrow Funk Team - Used text font
* Trevent booh! - Used icon flip lua code

### Special Thanks
* JorgeX_YT - For replacing our current beta tester of the port and testing the port
* mariodevintoons - For making the new HD mall darnell
* Remy And Ava - For supporting me
* Galax - For almost testing the port and being my best friend
* FNF BR - For making an Android Port
* DANIZIN - For making an Android Port
* MaysLastPlay - For helping out with the Android Port
* DMMaster 636 - For making good HD art and cool stuff for the port
* Filipianosol - For optimizing the port