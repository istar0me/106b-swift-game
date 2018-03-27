/*:
 # 3.3 資料型態
 資料型態主要可分為數值(1~3)、文字(4~5)與布林值(6)
 1. Int 整數
 2. Float 單精度浮點數
 3. Double 雙精度浮點數
 4. Character 字元
 5. String 字串
 6. Bool 布林值
 
 此外，還有一個特別的形態稱作 Tuple（數組），它將多個值組合成一個復合值
 */
/*:
 ## 整數 Int
 ### 特點
 * 整數指的是數字中不包含小數的部分，像是 42 和 -23
 * 分成有號(signed)和無號(**u**nsigned)兩種
    * 有號(Int)：正數、零或負數
    * 無號(UInt)：正數或零
 > 只有當確定數值一定不是負數才使用無號(UInt)
 ### 語法
 var 變數名:資料型態 = 初始值
 */
var signedInt: Int8 = -23
var unsignedInt: UInt8 = 42
/*:
 * 有沒有注意到上面的 Int/UInt 後面加上了 8？
 * 那個數字代表能儲存的位元長度，共有 8, 16, 32, 64 位元四種選擇
 * 在 n 位元的狀態下，整數的長度為 2 的 n 次方，如 8 位元長度為 2^8 = 256
 */
let Int8MinValue = Int8.min
let Int8MaxValue = Int8.max
let UInt8MinValue = UInt8.min
let UInt8MaxValue = UInt8.max
//: 可使用 min 與 max 屬性得知整數的最小/大值
/*:
 ## 浮點數
 相較於整數，浮點數能夠儲存包含小數的數字。浮點數分成單精度(Float)與雙精度(Double)兩種，前者僅能儲存 32 位元；後者則能儲存 64 位元的長度，一般若不確定數值的長度，建議使用 Double。
*/
var floatPi:Float = 3.141592
var doublePi:Double = 3.141592653589793
//: Float 的精準度大約在小數點後 6 位；Double 則是小數點後 15 位
//: - Experiment:
//: 可以試著在第 40, 41 行後面加上一個數字，看看結果如何？
//: ## 文字
//: 文字可分成兩種：字元跟字串，字元就是單一的文字，而多個字元組合起來就是字串
//: ### 語法
//: * 字元：var 變數名:Character = 初始值
//: * 字串：var 變數名:String = 初始值
let ten:Character = "X"
let greeting:String = "Hello"
//: > Swift 對語法較嚴謹，不像其他語言能夠用單或雙引號，只能使用雙引號（"）將內容包住
/*:
 ## 布林值 Bool
 非常常見卻很簡單的型態，只有兩種可能：true(是) 與 false(否)
 */
//: ### 語法
//: var 變數名:Bool = 初始值（true/false）
var isSwiftFun:Bool = true
//: > 由於 Swift 相當聰明，會自動判斷型態，因此可以不用強調 Bool 型態
var hardToLearn = false
//: ### 搭配 if / if...else
//: Bool 常與 if 搭配使用
if(isSwiftFun) {
    print("我也覺得 Swift 很有趣")
}
//: 當 if 判斷語句內的條件成立(true)時，就會執行大括號內的程式碼，因此列印出「我也覺得 Swift 很有趣」

//: 也可與 if...else 搭配使用
if(hardToLearn) {
    print("Swift 很難學😓")
} else {
    print("Swift 真的不難！")
}
//: * 當條件成立時執行 if 區塊的程式碼；不成立時則執行 else 區塊的程式碼
//: * 由於 hardToLearn 並不成立(false)，因此執行 else 區塊的程式碼，列印出「Swift 真的不難！」
/*:
 ## 數組 Tuple
 Swift 也支援 Tuple 的資料型態，這是在近代語言才演化出來的。Tuple 把多個值組合成一個復合值，數值以逗號隔開，而整體以小括號包圍。通常會用這個形態當作函數的回傳型態（下一章會介紹），能讓我們回傳單一的 Tuple 型態卻包含多個數值
 */
var someTuple = (top: 10, bottom: 12)  // someTuple is of type (top: Int, bottom: Int)
someTuple = (top: 4, bottom: 42)       // OK: names match
someTuple = (9, 99)                    // OK: names are inferred
//someTuple = (left:5, right:9)
//someTuple = (bottom: 5, top: 9)
//print(someTuple)
/*:
 > 要注意 tuple 名稱的配對，若不相符會發生錯誤
 - Experiment:
 試著移除第 84 行的註解，看看會產生什麼錯誤？
 */
// 數組
var someTuple2 = (top: 10, bottom: 12)
// 字典
var animalGroupsDict = ["whales":"pod", "geese":"flock", "lions": "pride"]
/*:
  > Tuple 跟字典並不同，字典用中括號 `[]` 包圍，且若鍵值為字串，需要用雙引號包圍(")；相對地，Tuple 就簡單許多，它用小括號 `()` 包圍，而鍵值都不需要加上任何符號。
 */
//: [上一頁](@previous) | [下一頁](@next)
