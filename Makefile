# Ebola_talks
### Hooks for the editor to set the default target
current: target

target pngtarget pdftarget vtarget acrtarget: math.translate.txt 

##################################################################

# make files

Sources = Makefile .gitignore README.md stuff.mk LICENSE.md
include stuff.mk
-include $(ms)/perl.def

##################################################################

## Content

-include $(ms)/newtalk.def

Sources += local.txt.format

## Copyright not integrated into make system yet
Sources += copy.tex math.txt

math.draft.pdf: math.txt

## Markup
Sources += math.old.txt
math.translate.txt: ../makestuff/newtalk/JD_lecture_format.pl math.old.txt
	$(PUSH)

######################################################################

Archive += math.draft.pdf

### Makestuff

## Change this name to download a new version of the makestuff directory
# Makefile: start.makestuff

-include $(ms)/git.mk
-include $(ms)/visual.mk
-include $(ms)/newtalk.mk

# -include $(ms)/wrapR.mk
-include $(ms)/newlatex.mk
