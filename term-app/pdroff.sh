#!/bin/sh
#this is more to get the basic logic for the main application out of the way in a very basic manner
#When inputting file name DO NOT use any extensions
editor()
{
	echo "editing $1.ms";
	vim "$1.ms";
}
pdfviewer()
{
	echo "viewing $1.pdf"
	zathura "$1.pdf";
}
groffcompile()
{
	echo "compiling $1.ms into $1.pdf";
	groff -ms "$1.ms" -Tpdf > "$1.pdf";
}
mainloop()
{
	loopvar=true;
	while $loopvar;
		do editor $1;
		groffcompile $1;
		pdfviewer $1;
		read -p "Continue editing? (Y/n)" ans && if [[ $ans == [nN] || $confirm == [nN][oO] ]]; then loopvar=false; fi;
	done;
}
mainloop $1;
