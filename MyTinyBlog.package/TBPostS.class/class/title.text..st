instance creation
title: arg1 text: arg2

	| tmp2 |
	tmp2 := self new.
	tmp2
		title: arg1;
		text: arg2.
	^ tmp2 yourself