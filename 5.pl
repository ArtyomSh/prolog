
func([],[]):-!. % случай, когда списко пустой.    
func([H|T],[H1|T1]):- % [H1|T1] - это список в который мы будем записывать удвоенные  значения
	H1 is H *2, % удваиваем голову
	func(T,T1),!. % отсекаем голову и продолжаем рекурсивно.
