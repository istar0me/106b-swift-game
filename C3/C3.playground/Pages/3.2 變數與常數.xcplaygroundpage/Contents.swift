//: # 3.2 變數與常數
//: ## 變數 var
//: ### 特點
//: * 變數內的值能夠改變，但資料型態不能改變
//: * 變數透過 var 關鍵字來定義
//: * 與變數相對的概念為常數 let，稍後會提到
//: ### 命名規則
//: 1. 開頭必須是字母（letter）或底線（underscore）
//: 2. 字元的大寫小寫所代表的意義不同
//: 3. 不得使用關鍵字（keyword），例如函式名稱
//: ### 語法
//: var 變數名 = 初始值
//: ### 使用範例
var value1 = 10             // 定義整數
var value2 = 1.2            // 定義浮點數
var value3 = "How arre you" // 定義字串
//: > 當變數決定資料型態之後，就不能隨意改變成另外一個資料型態。例如以下的用法是禁止的：
//var value4 = 10        // 資料型態：整數
//value4 = "How are you" // 資料型態：字串
//: - Experiment:
//: 試著將第 18 ~ 19 行的註解移除掉，看看會發生什麼錯誤？
//: ### 範例程式
import UIKit               // 加入函式庫定義
var value5 = 10            // 定義整數
var value6 = 1.2           // 定義浮點數
var value7 = "How are you" // 定義字串
// value5 = 20
// value5 = "How are you"
print(value5)
print(value6)
print(value7)
//: ## 常數 let
//: ### 特點
//: * 常數的值一旦設定後，就不能夠再改變
//: * 常數透過 let 關鍵字來定義
//: ### 語法
//: 一般來說 Swift 會自動判別資料型態，但在這邊也可自行指定：
/*:
 ```let 變數名:資料型態 = 固定值```
 */
//: > 資料型態在下節會詳細介紹，這邊只需要知道 Int 代表整數即可
//: ### 使用範例
let value8:Int = 3
let value9:Int = 4
//: ### 常數的宣告方式
//: 整數部分
let value10 = 20
let value11:Int = 3
//: 字串部分
let str = "Hello World"
//: ### 範例程式
var str1 = "Hello"       // 定義文字變數 str1 為 "Hello"
str1 = "Hello1"
print(str1)              // 顯示變數 str1 到輸出視窗上
var value12 = 20         // 定義整數變數 value12 為 20
value12 = value12 + 10   // 變數 value12 加上 10 之後為 30
print(value12)

let str2 = "Hello"       // 定義文字常數 str2 為 "Hello"
//str2 = "Hello!"
print(str2)              // 顯示常數 str2 到輸出視窗上
let value13 = 10         // 定義整數常數 value13 為 10
//value13 = value13 + 10
print(value13)
//: - Experiment:
//: 試著將第 60, 63 行的註解移除，看看會發生什麼結果？

//: [上一頁](@previous) | [下一頁](@next)
