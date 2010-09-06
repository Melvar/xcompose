# Makefile for xcompose

xcompose : neo2.compose ipa.composes latin.composes symbols.composes proposed.compose 
	echo "##### begin xcompose" >$@
	cat $^ >>$@
	echo "##### end xcompose" >>$@
	./chkcollision.sh

ipa.composes : ipa/base.compose
	echo "#### begin xcompose.ipa" >$@
	cat $^ >>$@
	echo "#### end xcompose.ipa" >>$@

latin.composes : latin/diacritics.compose latin/extlatin.compose latin/greek.compose latin/ligatures.compose
	echo "#### begin xcompose.latin" >$@
	cat $^ >>$@
	echo "#### end xcompose.latin" >>$@

symbols.composes : symbols/arrows.compose symbols/keyboard.compose symbols/math.compose symbols/pictograms.compose
	echo "#### begin xcompose.symbols" >$@
	cat $^ >>$@
	echo "#### end xcompose.symbols" >>$@

check :
	./chkcollision.sh

