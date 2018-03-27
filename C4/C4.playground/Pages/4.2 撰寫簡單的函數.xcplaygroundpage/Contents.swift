/*:
 # 函數(function)
 函數是用來執行特定任務的程式碼區塊，我們給他一個函數名稱，而需要時只要呼叫函數名稱就會執行指定的工作。
 
 還記得高中的代數嗎？裡面有關於函數的概念。
 
 舉個例子，若要將華氏溫度轉換成攝氏溫度，我們要用這種方式表示：
 ```
 f(x)=[(x-32)*5]/9
 ```
 * 函數名稱(function name)：f
 * 輸入(input)：或稱為變數(parameter)，在這邊為x
 * 運算式(expression)：等號右邊的所有運算
 * 輸出(output)：回傳(return)的結果，在這為f(x)的值
 
 雖然函數是以數學符號表示，但我們可以先用自然語言（如中、英文）寫下，方便轉換成運算式，如上面的程式可改寫成：
 ```
 定義一個名為 f 的函數，代入名為 x 的變數。而 x 減去 32，然後乘上 5，再除以 9 以後，這個函數會回傳它的結果
 ```
 ## 4.2 在 Swift 撰寫函數
 Swift 用來建立函數的符號，跟高中的方式稍稍不同，一般情況下宣告函數的語法如下：
 ```
 func funcName(paramName : type, ...) -> returnType {
    // code
 }
 ```
 * func：用來定義函數的關鍵字
 * funcName：函數名稱，方便辨識這段程式的功能
 * paramName：變數名稱
 * type：變數資料型態，若忘記可參考 C3.3
 * returnType：回傳資料型態，代表最後輸出結果的型態
 
 將溫度轉換的方程式轉換成 Swift 的函數：
 */
func fahrenheitToCelcius(fahrenheitValue : Double) -> Double {
    var result : Double
    result = (((fahrenheitValue - 32)*5)/9)
    return result // 因為前面將 result 宣告為 Double 型態，與 returnType 吻合，因此沒有出現錯誤
}
/*:
 * funcName(函數名稱)：fahrenheitToCelcius
 * paramName(變數名稱)：type(變數資料型態)：fahrenheitValue : Double // 只有一個變數
 * returnType(回傳資料型態)：Double
 > 輸入函數時，可以看見右邊並沒有顯示結果，這是因為我們僅定義了程式，我們需要呼叫來執行它：
 */
//fahrenheitToCelcius(fahrenheitValue: 32)

/*:
 - Experiment:
 將第 46 行註解移除，看看會不會有結果輸出
 
 你可能有注意到，Swift 在呼叫函數的時候，需寫出變數的名稱。儘管比較麻煩，但這樣是有優點的，在呼叫的時候能更清楚數值/資料代表的意義。若你不想這麼麻煩，有沒有什麼解決的方法呢？
 
 答案是：有，僅僅只要在變數名稱前面加上 `_ ` (底線後面加上一個空白)，呼叫的時候就不需要打出變數名稱了
 */
func greet(_ person: String, _ day: String) -> String { // 在參數名稱前面加上_ (底線+空格)
    return "Hello \(person), today is \(day)."
}

greet("Kevin", "Monday") // 直接寫值即可，不用再給參數名稱
/*:
 - Experiment:
 1.若要得知華氏 64.4 度下等同於攝氏幾度，請問要輸入什麼程式來呼叫？\
2.試著寫看看攝氏轉華氏溫度轉換的程式，並將此函數命名成 `celciusToFahrenheit`
 */
//: ### 請寫下你的程式
//: 1.若要得知華氏 64.4 度下等同於攝氏幾度，請問要輸入什麼程式來呼叫？

//: 2.試著寫看看攝氏轉華氏溫度轉換的程式，並將此函數命名成 `celciusToFahrenheit`

//: [上一頁](@previous) | [下一頁](@next)
