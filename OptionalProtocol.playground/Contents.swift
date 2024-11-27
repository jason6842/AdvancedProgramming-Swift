import Foundation

@objc protocol ReseravationDataSource {
    @objc optional func reserve(tables: Int) -> Int // Optional
    @objc optional var maxReservableTables: Int { get }
}

class ReservationWebsite: ReseravationDataSource {
    func reserve(tables: Int) -> Int {
        if tables < 1 {
            return 0
        }
        return tables
    }
}

class ReservationAgent: ReseravationDataSource {
    let maxReservableTables: Int = 2
}
