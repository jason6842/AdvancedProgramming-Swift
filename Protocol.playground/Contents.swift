protocol Employee { // similar to Java's Interface
    var name: String { get } // getter method
    var daysWorking: Int { get set }
    func executePrimaryDuty()
    func danceToHappyBirthdaySong(lyrics: String)
}

protocol GoodChef {
    func cookGoodFood()
}

protocol GreatChef {
    func cookGreatFood()
}

protocol ExcellentChef {
    func cookExcellentFood()
}

//class Person: GoodChef, GreatChef {
//    func cookGoodFood() {
//        
//    }
//    
//    func cookGreatFood() {
//        <#code#>
//    }
//    
//}

//class Person{
//}

//extension Person: GoodChef {
//    func cookGoodFood() {
//    }
//}
//
//extension Person: GreatChef {
//    func cookGreatFood() {
//    }
//}
//
//extension Person: ExcellentChef {
//    func cookExcellentFood() {
//    }
//}

// Create a protocol to inherit other protocols.
protocol BlackBeltChef: GoodChef, GreatChef, ExcellentChef {
    func cookBlackBeltFood()
}

class Person: BlackBeltChef {
    func cookGoodFood() {
    }
    
    func cookGreatFood() {
    }
    
    func cookExcellentFood() {
    }
    
    func cookBlackBeltFood() {
    }
}
