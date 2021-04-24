import UIKit

struct anyType<Element: Equatable>{
    var list = [Element]()
    
    func printList(){
        print(list)
    }
    
    mutating func addItem(item: Element){
        list.append(item)
    }
    
    mutating func removeItem(item: Element){
        list.removeAll { $0 == item}
    }
}

var strList = anyType<String>()
strList.addItem(item: "Str1")
strList.addItem(item: "Str2")
strList.addItem(item: "Str2")
strList.printList()

var intList = anyType<Int>()
intList.addItem(item: 1)
intList.addItem(item: 2)
intList.addItem(item: 3)
intList.removeItem(item: 1)
intList.removeItem(item: 0)
intList.printList()

var floatList = anyType<Float>()
floatList.addItem(item: 2.2)
floatList.addItem(item: 3.2)
floatList.addItem(item: 4.2)
floatList.printList()
