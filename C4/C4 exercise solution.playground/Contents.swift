//: # 第四章習題
//: ## 1. 九九乘法表
//: ### 作法1：搭配陣列
func timeTable1() {
    let values = [1,2,3,4,5,6,7,8,9]
    for j in values {
        for k in values {
            print("\(j) * \(k) = \(j*k)")
        }
    }
}

timeTable1()
//: ### 作法2：搭配 `...` 運算子
func timeTable2() {
    for j in 1...9 {
        for k in 1...9 {
            print("\(j) * \(k) = \(j*k)")
        }
    }
}

timeTable2()
//: ## 2. 超級乘法表
func superTimeTable(n: Int) {
    for j in 1...n {
        for k in 1...n {
            print("\(j) * \(k) = \(j*k)")
        }
    }
}

superTimeTable(n: 12)
//: ## 3. 改寫成攝氏轉華氏溫度
func celciusToFahrenheit(celciusValue: Double) -> Double{
    var result: Double
    result = ((celciusValue * 9)/5)+32
    return result
}

celciusToFahrenheit(celciusValue: 18)
//: ## 4. Door 類別新增 width 及 height 的 init 機制
class Door {
    var opened = false
    var locked = false
    var width = 32
    var height = 72
    var weight = 10
    var color = "Red"
    init(color: String, width: Int, height: Int) {
        self.color = color
        self.width = width
        self.height = height
    }
}

let myDoor = Door(color: "blue", width: 40, height: 80)
