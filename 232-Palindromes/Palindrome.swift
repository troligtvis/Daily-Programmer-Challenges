//
//  Palindrome.swift
//
//
//  Created by Kj Drougge on 2015-09-16.
//
//

// Solution for:
// https://www.reddit.com/r/dailyprogrammer/comments/3kx6oh/20150914_challenge_232_easy_palindromes/

func isPalindrome(text: String) -> Bool {
    let strippedString = String(filter(text) { find([",", " ", "\n", "\r", "!", "?"], $0) == nil})
    return strippedString == Array(arrayLiteral: strippedString).map() { String(reverse($0)) }.first ? true : false
}

func isPalindrome(text: String, withCharacterArray chars: [Character]) -> Bool {
    let strippedString = String(filter(text) { find(chars, $0) == nil})
    return strippedString == Array(arrayLiteral: strippedString).map() { String(reverse($0)) }.first ? true : false
}
