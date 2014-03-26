#A simple script used to quickly create new files or projects.

##Usage: 

$ new web page

$ new c++ header

$ new web bp


##Install: 

sudo sh install.sh

##Add new projects: 

Create new directory for each argument in ~/.new

For example: 

$ new web template

will only work if a filepath like 

~/.new/web/template/<bunch of files you want copied>

exists.

Note: in the project template directories, any hidden files are ignored, use for readmes and whatnot

Note: Fully empty ~/.new directory will cause error if run. But then, why are you trying to run new with nothing to copy?

##Planned features:

Support for targeted 'new'-ing (new web template in/this/directory)

##Suggestions/comments welcome
