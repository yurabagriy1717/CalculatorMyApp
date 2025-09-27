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
        
        if error != nil {
            error = nil
            input = key
        }
        
        if let left = previousNum, !operation.isEmpty {
            expression = "\(left) \(operation) \(input)"
        }
        
    }
    
    func clear() {
        input = "0"
        previousNum = nil
        currentNum = nil
        operation = ""
        error = nil
        expression = ""
        isTyping = false
    }
    
    func setOperation(_ operation: String) {
        previousNum = Double(input)
        self.operation = operation
        isTyping = false
        
        if let left = previousNum {
            expression = "\(left) \(operation)"
        }
    }
    
    func calculate() {
        currentNum = Double(input)
        var result: Double = 0
        if let previousNum, let currentNum {
            if operation == "+" {
                result = previousNum + currentNum
                input = String(result)
            }
            
            else if operation == "-" {
                result = previousNum - currentNum
                input = String(result)
            }
            
            else if operation == "*" {
                result = previousNum * currentNum
                input = String(result)
            }
            
            else if operation == "/" {
                if currentNum == 0 {
                    error = "на 0 ділити не можна"
                    return
                }
                result = previousNum / currentNum
                input = String(result)
            }
            
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
