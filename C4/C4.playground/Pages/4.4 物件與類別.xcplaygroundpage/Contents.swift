/*:
 # 4.4 物件與類別
 Swift 是個物件導向的程式語言，如果熟悉 C++ 等物件導向程式語法，相信對這概念一定不陌生。
 
 但是如果之前沒有接觸過也沒有關係，因為這節將會深入淺出地講解物件導向程式設計（Object-Oriented Programming, OOP）。
 
 ## 隨處都是物件
 OOP（指物件導向程式設計，以下略）是以物件的角度來思考軟體開發問題的方式。
 
 ### 可是，什麼是物件呢？
 其實身邊大多的物體都是，例如門、窗戶、鏡子、手機等等，而物件又可以再拆分成兩項：
 1. 性質：屬性(Attribute, Properties)
 2. 行為：方法(Methods)
 
 - Experiment:
 現在試著將門當作物件，想想看它有哪些屬性與方法？
 */
//屬性：
//方法：
/*:
 ```
 參考答案：
 屬性：尺寸、顏色、狀態（開或關）等性質
 方法：門可以開關、門可以上鎖。
 ```
 
 恭喜你已經踏出理解物件的第一步了，剛剛的小習題所做的行為稱作「模型化(modeling)」，模型化代表檢查它的屬性與方法，再用程式語言來描述這個模型。
 
 ## Swift 物件皆是類別
 在 Swift 中物件用一個特別的構造來表示，稱作類別（calss)。類別的英文 class 是它的關鍵字，而它由這些項目組成：
 1. 一個名稱（類別名稱）
 2. 一個或多個屬性
 3. 一個或多個方法
 */
class Door {
    var opened = false
    var locked = false
    let width = 32
    let height = 72
    let weight = 10
    let color = "Red"
    
    func open() -> String {
        opened = true
        return "喀... 芝麻開門"
    }
    
    func close() -> String {
        opened = false
        return "芝麻關門"
    }
    
    func lock() -> String {
        locked = true
        return "門已鎖上"
    }
    
    func unlock() -> String {
        locked = false
        return "解鎖成功"
    }
}
/*:
 * 每個類別都有一個獨立用來辨識的名稱：類別名稱，一般會在首字母採用大寫，如上面例子為 Door
 * 而在類別中定義中的屬性可為變數或常數，但需要先賦予一個初值
 * 至於下方四個 func 則為類別的方法，分別描述這扇門的行為
 
 ## 讓模型變真正的物件
 我們已經定義完類別了，但該如何使用它呢？
 
 就 OOP 概念而言，我們還需要將類別轉換為物件，這個過程稱作「實例化(Instantiation)」。打個比方，上面類別中的門目前只存在在設計圖上，需透過實例化這個過程，將它打造成現實可操作的物件。
 
 那麼，該怎麼將類別實例化呢？
 */
let frontDoor = Door()
let backDoor = Door()
frontDoor.color
backDoor.color
/*:
 將類別實例化非常簡單，只需要將 `函數名稱()` 指派給變/常數即可，如上所示。
 
 上面的程式碼建立了兩個物件，分別是 frontDoor 與 backDoor。想像我們剛透過名為 Door 的設計圖，去製造了兩扇門，但由於沒有特別指定，這兩扇門不僅大小相同，連顏色也是（都為 red），等等將介紹如何變更門的顏色（屬性）。
 */
/*:
 ## 開門與關門
 我們剛透過程式查看了門的顏色（屬性），現在則要讓門做出指定的行為（方法）。
 
 這邊我們試著將門開了又關（？）
 */
frontDoor.open()
frontDoor.close()
//: > 若要呼叫類別中的方法，別忘記要加上左右的小括號喔。若只輸入 `frontDoor.open` 並不會跑出執行的結果喔！
/*:
 ## 各式各樣的門
 剛剛的程式碼已經能讓我們做許多事，如查看門的顏色、長寬高、是否打開等等，也能夠執行開關門的動作。只是到目前為止我們都只是照著設計圖上製作，因此每扇門的設計都是一模一樣的，但如果今天想要一扇粉紅色的門呢？
 
 首先，我們需要先將在類別中宣告的常數(let)改為變數(var)：
 */
class Door2 {
    var opened = false
    var locked = false
    var width = 32
    var height = 72
    var weight = 10
    var color = "Red"
//  ^^^
}

let frontDoor2 = Door2()
//: 宣告為變數後，我們就能夠使用點符號來改變它的值
frontDoor2.color
frontDoor2.color = "pink"
print(frontDoor2.color) // 原來是任意門啊
/*:
 可以看到 newFrontDoor 這扇門已經變為粉紅色了，但這麼做有點多此一舉，怎麼說？
 
 因為這是在門實例化後才做的改變，就像你請廠商訂做一扇紅色的門，但你自己又把它漆成粉紅色，為何不要一開始就訂做粉紅色的門呢？
 
 Swift 聰明如你，他也這麼認為，因此我們能用一個特別的方法：`init`，用來初始化物件
 */
class Door3 {
    var opened = false
    var locked = false
    var width = 32
    var height = 72
    var weight = 10
    var color = "Red"
//      ^^^^^
//      前：等同於下方 self.color，代表類別的屬性
    
    init(color: String) {
//       ^^^^^
//      後：等同於下方 color，代表 init 方法的參數
        self.color = color
    }
}

let frontDoor3 = Door3(color: "pink")
frontDoor3.color

/*:
 可以看到採用 `init` 方法後，每次要製作一扇門都要先告知門的顏色（帶入參數），能避免做好了又更改的麻煩
 
 > 上方的 `self` 是一個特別的關鍵字，它的功用是用來區分屬性與參數，不將需上的色（屬性）與客戶要求的顏色（參數）搞混
 */

//: [上一頁](@previous)
