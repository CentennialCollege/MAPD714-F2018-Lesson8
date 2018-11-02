import Foundation

class Person {
    var age:Int
    var name:String
    
    init(_ age:Int, _ name:String) {
        self.age = age
        self.name = name
    }
    
    public func saysHello() -> Bool {
        print("\(self.name) says hello")
        return true
    }
}
