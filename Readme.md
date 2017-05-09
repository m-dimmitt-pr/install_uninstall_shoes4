<hr>

### Interested in output for current shoes4 packaging? see report: [#4](../../../../MichaelDimmitt/install_uninstall_shoes4/issues/4)

# (Not Currently Released), here is why:<br>(Not Currently in Production)Remove upon resolution.
<b>
1) pending path fix on shoes4.<br>
2) pending script execution fix on shoes4.<br>
3) when path is fixed I should be able to access images.<br><br>

note: I can currently hack this into working on a local computer <br>but it does not scale to other computer environments.
</b><hr><br>
# Template for an install/uninstall gui.
### Use this template to make a Programmer agnostic mac application.
### Package .app executables.
### Enable users without programming experience to click install and uninstall your program.

![screen shot 2017-05-06 at 3 35 15 pm](https://cloud.githubusercontent.com/assets/11463275/25775377/cf6d9942-3271-11e7-80fe-0a11e757883a.png)

## (macintosh) How do I package this repository in it's current form?
1) git clone https://github.com/shoes/shoes4.git
2) git clone https://github.com/MichaelDimmitt/install_uninstall_shoes4.git
3) cd shoes4
4) rvm install jruby-9.1.8.0 [ x86_64 ]
5) (without package): bin/shoes ../install_uninstall_shoes4/Shoes.rb
6) (with package   ): bin/shoes package --mac ../install_uninstall_shoes4/Shoes.rb
7) app can be found in "pkg" folder should be created in repo install_uninstall_shoes4/

## How to connect your program's install and uninstall to the project
1) cd install_uninstall_shoes4/app
2) substitute install_driver.sh and uninstall_driver.sh with your install script and uninstall script.

## Useful links

project abstracted from shoes main page:<br>
http://shoesrb.com/
![image](https://cloud.githubusercontent.com/assets/11463275/25774919/c945e2aa-3266-11e7-870e-6b0146bb825e.png)
