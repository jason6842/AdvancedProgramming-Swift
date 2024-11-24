let reservationsInPerson: Set<String> = ["000-345-3441", "000-345-3442"]

let reservationsOverPhone: Set<String> = ["000-345-3443", "000-345-3444"]

let reservationsOverInternet: Set<String> = ["000-345-3445", "000-345-3446"]

let inPersonAndOverPhone = reservationsInPerson.union(reservationsOverPhone)

print(inPersonAndOverPhone)

var allPhoneNumbers = inPersonAndOverPhone.union(reservationsOverInternet)
print(allPhoneNumbers)

var confirmationCodes: Set<String> = ["LL3441", "LL3442", "LL3443", "LL3444", "LL3445", "LL3446"]

print("\(confirmationCodes.count)")

confirmationCodes.insert("LL3447")
print(confirmationCodes)

allPhoneNumbers.insert("000-345-3447")
print(allPhoneNumbers)

allPhoneNumbers.remove("000-345-3447")
print(allPhoneNumbers)

confirmationCodes.remove("LL3447")
print(confirmationCodes)

