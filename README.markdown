# What is Cherry Pick Printers.scpt?

CPP is an Applescript that creates packages for specific printer PPDs.  It copies the PPDs and creates their printers.conf entries.  These PPDs and configuration entries are then bundled into a package so that they can be deployed easily and readily to other computers.

## Why does this exist?

Effectively managing printers on a large scale isn't fun.  Often, it's easy to create a master list of printers and push them out.  But what if you missed a printer?  Or, what if certain users need a particular printer?  What if you wanted one computer with a master list but push out smaller groups of printers?

CPP.scpt provides the option of configuring printers on your computer and then creating a package that you can then push out via Apple Remote Desktop.

## What's going on under the hood?

CPP.scpt takes advantage of the cups printing system underlying OS X.  In order to add a printer, you really only need to add an entry to /etc/cups/printers.conf and have an associated PPD file in /etc/cups/ppd/.  The PPD file is relatively easy to move, just copy it from one machine to the next.  Editing the printers.conf file, on the other hand, is a bit more involved.  If you want to add printers, you need to append to that file.

CPP.scpt lets you pick from your available PPD files which ones you'd like installed on other machines.  It then does a simple iteration over the printers in printers.conf to pull out the configurations that it needs.  The PPD files are then copied and the configurations are placed into a file.  CPP.scpt then uses PackageMaker's command line application to package up the PPDs and the configuration file.  The package will have two scripts, a preflight and a postflight.  The preflight simply attempts to kill cupsd.  Postflight attempts to append the configurations from the host to the target's printers.conf.

## How to use

First, make sure that you have Apple's PackageMaker installed.  Somewhere, there should be a command line version of it (usually "/Developer/usr/bin/packagemaker").  Make sure that `pathToPackageMaker` of CPP.scpt is set to the correct path to the command line app.  The next step is to run the script.  If you plan on using it frequently, consider compiling it as an application or running it with [FastScripts](http://www.red-sweater.com/fastscripts/).

The script will prompt you several times.  First, it will ask for which PPDs you'd like copied (multiple selection is allowed).  Then it will ask for your administrator password.  Nothing weird is going on, the script is just overly paranoid that it may not be able to read a particular file, copy a ppd, or create items in /tmp.  Besides, you can see the script yourself and confirm that it doesn't do anything destructive.  Once it's copied all the files it needs, it will ask you for a title (which appears in Installer when the package is opened manually), a bundle id, and a package filename.  It won't bother asking you *where* you want the package.  It just plops it onto the Desktop.

## What if I want to update a printer configuration instead?

Find another method.  CPP.scpt only allows you to add new printers.  However, if you're working with Apple Remote Desktop, the "Send Unix Command" tool is pretty useful.  Try to figure out how to use `lpadmin -x <printer>`.  If you don't know which printers are installed (or don't know their names in cups), check out `lpstat -p`.  More information can be found in the man pages for lpadmin and lpstat.  If you remove a printer with lpadmin, you can then add it back with an updated configuration using CPP.scpt.  Of course, if you get to be an expert with lpadmin, you won't need CPP.scpt, but, frankly, I figure most people probably don't want to be that intimate with command line options for printer management.

## Contact information

[Grayson Hansard](mailto:info@fromconcentratesoftware.com)  
[From Concentrate Software](http://www.fromconcentratesoftware.com)