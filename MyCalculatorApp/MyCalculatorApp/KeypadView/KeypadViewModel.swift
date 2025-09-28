//
//  KeypadViewModel.swift
//

import SwiftUI


class KeypadViewModel: ObservableObject {
    @Published var input: String = "0"
    @Published var expression: String = ""
    @Published var error: String? = nil
    
    var previousNum: Double?
    var operation: String = ""
    var currentNum: Double?
    var isTyping: Bool = false
    var tokens: [String] = []
    
    func pressKey(_ key:String) {
        
        if error != nil {
            clear()
        }
        
        if isTyping == false {
            input = key
            isTyping = true
        }
        
        else if isTyping == true {
            if input == "0" {
                input = key
            }
            else {
                if input.count >= 10 {
                    return
                }
                else {
                    input += key
                }
            }
        }
    }
    
    func clear() {
        input = "0"
        tokens.removeAll()
        operation = ""
        error = nil
        expression = ""
        isTyping = false
    }
    
    func setOperation(_ operation: String) {
        tokens.append(input)
        tokens.append(operation)
        isTyping = false
        
        expression = tokens.joined(separator: " ")
    }
    
    func calculate() {
        
        tokens.append(input)
        var work = tokens
        var result: Double = 0
        var i = 0
        
        while i < work.count {
            if work[i] == "*" || work[i] == "/" {
                if let num1 = Double(work[i-1]) ,let num2 = Double(work[i+1]) {
                    if work[i] == "*" {
                        result = num1 * num2
                    }
                    else if work[i] == "/" {
                        if num2 == 0 {
                            error = "ділити на 0 неможна"
                            return
                        }
                        result = num1 / num2
                    }
                    work.replaceSubrange((i-1)...(i+1), with: [String(result)])
                    i = 0
                    continue
                }
            }
            i += 1
        }
        
        i = 0
        
        while i < work.count {
            if work[i] == "+" || work[i] == "-" {
                if let num1 = Double(work[i-1]) , let num2 = Double(work[i+1]) {
                    if work[i] == "+" {
                        result = num1 + num2
                    }
                    else if work[i] == "-" {
                        result = num1 - num2
                    }
                    work.replaceSubrange((i-1)...(i+1), with: [String(result)])
                    i = 0
                    continue
                }
            }
            i += 1
        }
        
        if let final = work.first {
            input = final
            expression = tokens.joined(separator: " ") + " = "
            tokens = [final]
            isTyping = false
        }
    }
    
    func decimalPoint() {
        if input.contains(".") {
            return
        }
        
        if isTyping == true {
            input += "."
        }
    }
    
    
}
