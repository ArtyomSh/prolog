func([],[]):-!. % случай, когда списко пустой.    
func([H|T],[H1|T1]):- % [H1|T1] - это список в который мы будем записывать новые значения
    H>0, % если элемент больше нуля
	H1 is H *(-1), % умножаем его на -1
	func(T,T1),!. % отсекаем голову и продолжаем рекурсивно.
func([H|T],[H1|T1]):- 
    H<0, % если элемент уже меньше нуля
	H1 is H, % никак его не меняем
	func(T,T1),!. % отсекаем голову и продолжаем рекурсивно.
func([H|T],[H1|T1]):- % [H1|T1] - это список в который мы будем записывать удвоенные  значения
    H=:=0, % если элемент ноль
	H1 is H, % то никак его не меняем
	func(T,T1),!. % отсекаем голову и продолжаем рекурсивно.
