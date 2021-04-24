import UIKit

class Data {
    var number: Int
    var name: String
    
    init(number: Int, name: String){
        self.number = number
        self.name = name
    }
    
    func printList(){
        print("\(number), \(name)")
    }
}

let list = [
    Data(number: 1, name: "C"),
    Data(number: 1, name: "A"),
    Data(number: 2, name: "D"),
    Data(number: 1, name: "E"),
    Data(number: 2, name: "B")
]

var listSort = list.sorted {
    ($0.number, $0.name) < ($1.number, $1.name)
}

listSort.forEach{$0.printList()}


