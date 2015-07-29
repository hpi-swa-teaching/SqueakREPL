testing
testCorrectSpecialShortcutCompletion
	"Check whether special expression shortcuts are completed properly."

	self assert: ((self expressionCompletion complete: '!q') includes: '!quit')