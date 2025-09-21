//
//  KeypadView.swift
//  MyCalculatorApp
//
//  Created by Юрій Багрій on 17.09.2025.
//

import SwiftUI

struct KeypadView: View {
    var body: some View {
        VStack {
            HStack {
                CalcButtonNumView(title: "AC", action: { print("натиснуто 1") })
                CalcButtonNumView(title: "+/-", action: { print("натиснуто +/-") })
                CalcButtonNumView(title: "%", action: { print("натиснуто %") })
                CalcButtonOperation(title: "/", action: { print("натиснуто ?") })
            }
            
            HStack {
                CalcButtonNumView(title: "7", action: { print("натиснуто 1") })
                CalcButtonNumView(title: "8", action: { print("натиснуто +/-") })
                CalcButtonNumView(title: "9", action: { print("натиснуто %") })
                CalcButtonOperation(title: "*", action: { print("натиснуто ?") })
            }
            
            HStack {
                CalcButtonNumView(title: "4", action: { print("натиснуто 1") })
                CalcButtonNumView(title: "5", action: { print("натиснуто +/-") })
                CalcButtonNumView(title: "6", action: { print("натиснуто %") })
                CalcButtonOperation(title: "-", action: { print("натиснуто ?") })
            }
            
            HStack {
                CalcButtonNumView(title: "1", action: { print("натиснуто 1") })
                CalcButtonNumView(title: "2", action: { print("натиснуто +/-") })
                CalcButtonNumView(title: "3", action: { print("натиснуто %") })
                CalcButtonOperation(title: "+", action: { print("натиснуто ?") })
            }
            
            HStack {
                CalcButtonNumView(title: "cacl", action: { print("натиснуто 1") })
                CalcButtonNumView(title: "0", action: { print("натиснуто +/-") })
                CalcButtonNumView(title: ",", action: { print("натиснуто %") })
                CalcButtonOperation(title: "=", action: { print("натиснуто ?") })
            }
        }
        
    }
}

#Preview {
    KeypadView()
}
