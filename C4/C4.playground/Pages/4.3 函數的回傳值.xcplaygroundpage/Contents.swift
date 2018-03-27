/*:
 ## 4.3 函數的回傳值 (return type)
 在撰寫程式時，有時候需要回傳函數計算後的答案，在這節將會介紹如何設計有傳回資料的函數
 
 Swift 函數回傳值的位置很特別，一般的程式語言多放在函數前，但 Swift 程式語言卻是放在函數的最右邊。
 ### C 語言的回傳值
 ```
 int main () {
     // code
 }
 ```
 可以看見型態 int（整數）放在 main（函數名稱）前面
 ### Swift 語言的回傳值
 */
func sayHelloWorld() -> String {
    return "Hello, world!"
}

sayHelloWorld()
//: 在第 15 行，型態 String 在函數名稱 sayHelloWorld 後面
//: > 函數沒有強制一定要設定參數，像在上面的程式內雖然沒有參數，但還是能順利列印出內容
//: ### 帶一個參數的函數
func greet(name: String) -> String {
    return "Hello, \(name)."
}

greet(name:"Bob")
/*:
 ### 帶多個參數的函數
 函數不只能帶一個參數，還能帶多個參數
 */

func introduce(name: String, homeland: String) -> String {
    return "Hello, my name is \(name), and I'm from \(homeland)"
}

introduce(name: "Alan", homeland: "Taiwan")

//: 不只可以回傳固定的數字，還可以帶入參數
func greeting(name: String) -> String {
    return "Hello, \(name)."
}

greeting(name: "Ruby") // Hello, Ruby.

//: [上一頁](@previous) | [下一頁](@next)
