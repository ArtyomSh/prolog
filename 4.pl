func([],_,_,[]):-!. % случай, когда списко пустой.    
func([H|T],X,Y,[H1|T1]):- % [H1|T1] - это список в который мы будем записывать новые значения
  	H=:=X, % если элемент равен нужному
	H1 is Y , % то заменяем его
	func(T,X,Y,T1),!. % отсекаем голову и продолжаем рекурсивно.
func([H|T],X,Y,[H1|T1]):- 
   	not(H=:=X), % если не равен
   	H1 is H, % то пропускаем и оставляем старым
	func(T,X,Y,T1),!. % отсекаем голову и продолжаем рекурсивно.
