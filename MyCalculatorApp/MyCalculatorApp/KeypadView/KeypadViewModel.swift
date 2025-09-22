//
//  KeypadViewModel.swift
//

import SwiftUI


class KeypadViewModel: ObservableObject {
    @Published var input: String = "0"
    
    var previousNum: Double?
    var operation: String = ""
    var currentNum: Double?
    
    func pressKey(_ key:String) {
        if input == "0" {
            input = key
        }
        else {
            input += key
        }
    }
    
    func clear() {
        input = "0"
        previousNum = 0
        currentNum = 0
        operation = ""
    }
    
    func setOperation(_ operation: String) {
        previousNum = Double(input)
        self.operation = operation
        input = "0"
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
                result = previousNum / currentNum
                input = String(result)
            }
            
        }
    }
}
