//
//  CycleView.swift
//

import SwiftUI

struct Item: Identifiable {
    let id: UUID = UUID()
    let title: String
    let action: () -> ()
}

struct CycleView: View {
    let buttons: [Item] = [
        Item(title: "1", action: { print("1") }),
        Item(title: "2", action: { print("2") }),
        Item(title: "3", action: { print("3") }),
        Item(title: "+", action: { print("+") })
    ]
    
    let twoRows: [Item] = [
        Item(title: "4", action: { print("4") }),
        Item(title: "5", action: { print("5") }),
        Item(title: "6", action: { print("6") }),
        Item(title: "-", action: { print("-") })
    ]
    
    var body: some View {
        HStack {
            ForEach(buttons) { item in
                Button {
                    item.action()
                } label: {
                    Text(item.title)
                        .background(Color.gray)
                        .foregroundColor(Color.white)
                }
            }
        }
        .background(Color.red)
        
        HStack {
            ForEach(twoRows) { item in
                Button {
                    item.action()
                } label: {
                    Text(item.title)
                        .background(Color.gray)
                        .foregroundColor(Color.white)
                }
            }
        }
        .background(Color.blue)
    }
}


#Preview {
    CycleView()
}
