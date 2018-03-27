//: # 3.1 註解與列印
//: ## 註解 // /*...*/
//: ### 特點
//: * 讓開發者了解註解內的功能
//: * 編譯器遇到註解時會跳過註解文字，不做任何編譯
//: ### 語法
//: * 單獨一行的註解寫法：
// 文字註解
//: * 多行以上的註解寫法：
/*
文字註解
  */
//: > 選取要（反）註解的內容後，按下 cmd + / 能快速進行單行註解
//: ### 範例程式
/* 作者：柯博文老師
網站：www.powenko.com
 */
import UIKit
var str = "Hello World" // 字串
// 顯示文字
print(str)
//: ### 程式解說
//: * 第 15 ~ 17 行：使用 /* ⋯⋯ */ 進行多行註解
//: * 第 20 行：使用 // 進行單行註解
//: ## 列印 print
//: ### 特點
//: * 把文字資料或者是變數資料顯示在畫面上
//: ### 語法
//: print(變數名)  
//: print(文字)
//: ### 使用範例
print("how are you") // 顯示 how are you
print(123) // 顯示 123
//: 若要列印變數儲存的值，可使用以下語法：
//: `print("\(變數名)")`
var year = 2018
print("\(year)")
//: ### 範例程式
import UIKit // 加入函式庫定義
var str1 = "Hello" // 定義文字
var str2 = "playground"
var v1 = 20
print(v1)
print(str1)
print(str2)
print("Append string1:\(str1)")
print("Append string1:\(str1)\(v1)")

//: [上一頁](@previous) | [下一頁](@next)
