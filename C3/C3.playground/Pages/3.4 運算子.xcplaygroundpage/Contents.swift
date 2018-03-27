/*:
 # 3.4 運算子(Operator)
 運算子是負責檢查、改變或組合數值的特殊符號
 ### 常見的有以下幾種：
 1. 賦值運算子(Assignment Operators)
 2. 算術運算子(Arithmetic Operators)
 3. 取餘數運算子(Remainder Operators)
 4. 一元減法運算子(Unary Minus Operator)
 5. 複合指派運算子(Compound Assignment Operators)
 6. 比較運算子(Comparison Operators)
 7. 三元條件運算子(Ternary Conditional Operator)
 8. 區間運算子(Range Operators)
 9. 邏輯運算子(Logical Operators)
 */
/*:
 ## 術語
 運算子有分一元(unary)、二元(binary)與三元(ternary)運算子
 1. 一元(unary)：只操作一個物件，如 `-a`
 2. 二元(binary)：操作兩個物件，如 `2+3`
 3. 三元(ternary)：操作三個物件，目前只有一種：三元條件運算子，如 `a ? b : c`
 */
//: ## 1. 賦值運算子(Assignment Operators)
var b = 10
var a = 5
a = b // 將 b 的值賦予 a ， a 的值變成 10
print(a)
//: ## 2. 算術運算子(Arithmetic Operators)
/*:
 算術運算子負責運算數值，目前有這四種：
 1. 加法(+)
 2. 減法(-)
 3. 乘法(*) // 按下 `⇧ + 8` 跑出的符號
 4. 除法(/) // 並非 Enter 上方的反斜線(`\`)喔！
 */
//: > 建議在運算子左右留下空白喔！
1 + 2
5 - 3
2 * 3
10.0 / 2.5
//: 加法運算子也能夠用來串接字串
print("Hello, " + "world!") // 連接成 Hello, world!
//: ## 3. 取餘數運算子(Remainder Operators)
//: 下圖說明取餘數的功用

//: ![](remainderInteger_2x.png)
9 % 4 // 餘數為 1
//: - Experiment:
//: -9 對 4 取餘數結果為何？思考後移除第 49 行的註解
//-9 % 4
//: ## 4. 一元減法運算子(Unary Minus Operator)
//: 簡單來說就是求數字的負數，記得負號(-)要加在數字前面，且不能留空白喔！
let three = 3
var minusThree = -three
//minusThree = -4 // 正確用法
//minusThree = - 4 // 錯誤用法：不能在負號跟數值間留空白
let plusThree = -minusThree // 數字負負得正，-(-3) = +3
//: - Experiment:
//: 試著定義一個名為 temperature 的變數，並賦予它負十八的數值
//var temperature = -18
//: ## 5. 複合指派運算子(Compound Assignment Operators)
//: 一種偷懶的寫法（誤），原有的加減乘除都可改寫，甚至包含取餘數！
var c = 8
c += 1 // 等同於 c = c + 1
c -= 2 // 等同於 c = c - 2
c *= 3 // 等同於 c = c * 3
c /= 4 // 等同於 c = c / 4
c %= 5 // 等同於 c = c % 5
//: > * 第 65 行：`21 / 4 = 5 ... 1`，因此輸出為 5
//: > * 第 66 行：`5 / 5 = 1 ... 0`，因此輸出為 0
//: ## 6. 比較運算子(Comparison Operators)
/*: 比較左右兩數字，常見用法有這些：
 1. 相等 (`a == b`)
 2. 不相等 (`a != b`)
 3. 大於 (`a > b`)
 4. 小於 (`a < b`)
 5. 大於且等於 (`a >= b`)
 6. 小於且等於 (` a <= b`)
 */
//: > * 第 71 行：一個等號(=)為賦值運算子，兩個等號(==)為相等比較運算子，功能不同需注意！
//: > * Javascript 三個等號(===)的運算子能再比較型態是否相同，但 Swift 則是比較兩個物件是否指向同個物件，類別與物件在下章會介紹到
let j:Int = 8
let k:Double = 8
//j === k
//: ## 7. 三元條件運算子(Ternary Conditional Operator)
//: 三元條件運算子的功能非常特殊，共有三個參數，當第一個參數成立時(true)回傳第二個參數；反之(false)則回傳第三個參數
var theRich = true
//: 傳統寫法：
var assets:Int
if(theRich) {
    assets = 99999
} else {
    assets = 1
}
//: 精簡寫法（運用三元條件運算子）：
assets = theRich ? 99999 : 1
//: - Experiment:
//: 試著將第 86 行的 theRich 的數值改成 false，看看會發生什麼事？
//: ## 8. 區間運算子(Range Operators)
//: ### 閉區間運算子(Closed Range Operator)
//: 用法為 `a...b`，這代表從 a 到 b，且包含 a 與 b 的範圍 (`a <= value <= b`)
for index in 1...5 {
    print("索引值(index)為\(index)")
}
//: for-in 迴圈在下節會介紹到，在此只需要知道它會遍歷集合內的所有元素
/*:
 ## 9. 邏輯運算子(Logical Operators)
 邏輯運算子會對布林值進行修改或判斷，主要有以下三種：
 1. NOT(負) (`!a`)
 2. AND(和) (`a && b`)
 3. OR(或) (`a || b`) //
 > 如何輸入`|`(Vertical Bar；垂直條)？ ⇧ 加上 enter 上方的 \
 */
//: ### NOT(負) (`!a`)
//: 將布林值顛倒，true -> false；false -> true
var isHandsome = false
!isHandsome
//: > 第 115,116 行：原本並不帥，加上驚嘆號(!)就變帥了 XD
//: ### AND(和) (`a && b`)
//: 當兩個數值都為 true 時，會回傳 true。但只要有其中一個數值為 false，則會回傳 false
let isCheap = true
let isGreat = false
if(isCheap && isGreat) {
    print("又便宜又棒，當然買囉！")
} else {
    print("感覺不值得，還是別買了。")
}
//isCheap && isGreat
//: - Experiment:
//: 試著移除第 127 行的註解，來看一個條件為false的結果為何
//: ### OR(或) (`a || b`)
//: 只要其中一個條件是 true，就會回傳 true
let isRoommate = false
let isFriend = true
let isParent = false
isRoommate || isFriend || isParent
if(isRoommate || isFriend || isParent) {
    print("請稍等，我來幫你開門")
} else {
    print("你是誰？")
}
//: > 第 135 行：由於 isFriend 為 true，因此就算其他兩個變數都為 false，最後還是會回傳 true

//: [上一頁](@previous) | [下一頁](@next)
