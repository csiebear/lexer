作者 李碩軒
課程 編譯器系統
作業名稱 lexer

目的 撰寫lexer.l透過lex(flex 2.5.35)將lexer實作出來
執行方式
	flex lexer.l(此時會產生檔案 lex.yy.c 的 c code)
	gcc lex.yy.c -ll(之後再將此檔案透過gcc變成執行檔）
	./a.out <main.cpp(將測試的main.cpp餵給執行檔,結果會輸出到使用者的螢幕）

程式架構
	definition部份
		將把一些token的pattern用regular expression表示出來,以及宣告會使用到的變數line_num
	rule部份
		定義match後的action,目前設定就是把吃token name以<token name>表示,後面加上符合的原始字串.
		當讀到\n的時候將line_num加1並顯示當前行數(Line n)
	code部份
		只是先輸出第一行的Line 1 而已
執行過程
	可參考script檔案
