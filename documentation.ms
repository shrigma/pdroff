.TL
Documentation for pdroff
.AU
@shrigma on github.com
.1C
.2C
.NH
Dependancies
.PP

Out of the box the TUI application will require:
.IP \[bu] 2
the sh shell
.IP \[bu]
zathura
.IP \[bu]
vim
.IP \[bu]
groff (using the ms macros)

Out of the box the GUI application will require:
.IP \[bu] 2
gtk
.IP \[bu]
zathura
.IP \[bu]
groff (using ms macros)

All configuration will be done through the source code.
.NH
General idea
.PP
The general idea of this application is to create a front end editor for groff documents.
There are 2 applications Included in this repo, the terminal app that uses vim as the editor and the graphical app, the terminal app is a proof of concept, however its probably the more useful.

