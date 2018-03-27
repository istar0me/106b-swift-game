/*:
 # 4.1 集合型態(Collection Type)
 Swift 提供三種基礎的集合型態，有陣列(Array)、字典(Dictionary)與Set，能夠用來儲存數值
 * 陣列：有排序的集合
 * 字典：沒排序的集合，為鍵值配對(key-value pair)
 * Set：沒排序的集合，沒有重複的數值
 > 鍵值配對(kay-value pair)：每一個字典中的鍵(key)，對應一個唯一的值(value)，如下圖的「YYZ」的鍵對應到「Toronto Pearson」的值
 
 ![](CollectionTypes_intro_2x.png)
 
 > 以上三種所儲存的鍵和值，資料型態(Data Type)不能隨意改變
 */
/*:
 ## 1. 陣列(Array)
 Swift 宣告陣列的語法如下，最外面用中括號(`[`)包圍，數值與數值間以逗號(`,`)隔開
 */
var recipes = ["Egg Benedict", "Mushroom Risotoo", "Full Breakfast", "Hamburger", "Ham and Egg Sandwich"]
//: Swift 提供各種讓你查詢與操作陣列的方法。只要使用 count 屬性就可以找出陣列中的項目數
var numberOfItems = recipes.count
//: Swift 讓陣列操作更為簡單，你可以使用 += 運算子來增加一個項目
recipes += ["Thai Shrimp Cake"]
//: 這樣的做法可以讓你加入多個項目
recipes += ["Creme Brelee", "White Chocolate Donut", "Ham and Cheese Panini"]
//: 要在陣列存取或變更一個特定的項目，使用下標語法(Subscript Syntax)傳遞項目的索引值(Index)
var recipeItem = recipes[0]
recipes[1] = "Cupcake"
//: Swift 中一個有趣的功能是你可以使用 `...` 來變更值的範圍。舉例如下：
recipes[1...3] = ["Cheese Cake", "Greek Salad", "Braised Beef Cheeks"]
//: 這將 recipes 陣列的項目 2 至 4 變更為 Cheese Cake、Greek Salad、Braised Beef Cheeks（要記得陣列第一個項目是索引值0，這便是為何索引值對應項目2）。
print("recipes = \(recipes)")
/*:
 - Experiment:
 試著使用陣列搭配 for-in 迴圈來印出九九乘法表：
 */
func timeTable() {
    // 撰寫程式
}

timeTable()
/*:
 ## 2. 字典(Dictionary)
 要在 Swift 宣告一個字典，程式碼寫法如下所示：
 */
var companies = ["AAPL": "Apple Inc", "GOOG": "Google Inc", "AMZN": "Amazon.com, Inc", "FB": "Facebook Inc"]
//: 鍵值配對（key-value pair）中的鍵與值用冒號分開，然後用中括號包起來，每一對用逗號來分開。\
//: 就像陣列或其他變數一樣，Swift 自動偵測鍵與值的型態。不過，你也可以用下列的語法來指定型態資訊：
var companies2: [String: String] = ["AAPL": "Apple Inc", "GOOG": "Google Inc", "AMZN": "Amazon.com, Inc", "FB": "Facebook Inc"]
//: 要對字典做逐一查詢，可以使用 for-in 迴圈
for (stockCode, name) in companies {
    print("\(stockCode) = \(name)")
}

// 你可以使用 keys 與 values 屬性來取得字典的鍵值
for stockCode in companies.keys {
    print("Stock code = \(stockCode)")
}

for name in companies.values {
    print("Company name = \(name)")
}
//: 要取得特定鍵的值，使用下標語法指定鍵，當你要加入一個新的鍵值配對到字典中，只要使用鍵作為下標，並指定一個值，就像這樣：
companies["TWTR"] = "Twitter Inc"
//: 現在 companies 字典總共包含 5 個項目。 `"TWTR":"Twitter Inc"` 配對自動地加入 companies 字典
print("companies = \(companies)")
/*:
 ## 3. Set
 Set 和陣列非常相似，陣列是有排序的集合，而 Set 則是沒有排序的集合，在陣列中的項目可以重複，但是在 Set 中則沒有重複值。\
 要宣告一個 Set，你可以像這樣寫：
 */
var favoriteCuisines: Set = ["Greek", "Italian", "Thai", "Japanese"]
//                    ^^^
//                    指定 Set 型態
//: 這語法和陣列的建立一樣，不過你必須很清楚的指定 Set 型態\
//: 如前所述，Set 是不同項目、沒有經過排序的集合，如果在 Set 中，你放入重複的值，它便不會儲存這個值，以下列程式碼為例：
var hisFavoriteCuisines: Set = ["Greek", "Italian", "Thai", "Japanese", "Thai", "Italian"]
//: 實際的儲存結果：
//: `{"Greek", "Italian", "Thai", "Japanese"}`
//: Set 的操作和陣列很相似，你可以使用 for-in 迴圈來針對 Set 做迭代（Iterate）。不過，當你要加入一個新項目至 Set 中，你不能使用 `+=` 運算子。你必須呼叫 `insert` 方法：
favoriteCuisines.insert("Indian")
//: 有了 Set，你可以很容易判斷兩組 Set 中有重複的值或不相同的值。舉例來說，你可以使用兩組 Set 來分別代表兩個人最愛的料理種類。
var tomsFavoriteCuisines: Set = ["Greek", "Italian", "Thai", "Japanese"]
var peterFavoriteCuisines: Set = ["Greek", "Indian", "French", "Japanese"]
//: 當你想要找出他們之間共同喜愛的料理種類，你可以像這樣呼叫 `intersection`（交集）方法：
tomsFavoriteCuisines.intersection(peterFavoriteCuisines)
//: 如果你想找出哪些料理是它們之間所不同的，你則可以使用 `symmetricDifference`（對稱差）方法：
tomsFavoriteCuisines.symmetricDifference(peterFavoriteCuisines)
/*:
 此外還有聯集(union)與差集(subtracting)，各位同學可以視需求使用：
 
 ![](setVennDiagram_2x.png)
 */

//: [下一頁](@next)
