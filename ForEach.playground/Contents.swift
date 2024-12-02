/*
 forEach is a dedicated method that loops over each element in an array or dictionary and does something with it.
 */
let array = [2, 4, 6, 8, 10]
array.forEach { element in
    // Do something with an element
}

/*
 Why use forEach over the for or while loop?
 Unlike for-in loop, you can't skip elements while using the forEach function
 */
let donationsInformation = ["John" : 56, "Tom" : 15, "Charlie" : 104]
let donationTexts = donationsInformation.map { "\($0.key) has donated \($0.value) so far"}
for text in donationTexts {
    print(text)
}


donationsInformation.map { "\($0.key) has donated \($0.value) so far"}
    .forEach { print($0) }
