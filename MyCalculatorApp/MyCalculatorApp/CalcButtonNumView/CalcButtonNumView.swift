//
//  CalcButton.swift
//

import SwiftUI

struct CalcButtonNumView: View {
    let title: String    
    let action : () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            Text(title)
                .frame(width: 80, height: 80)
                .background(Color.gray)
                .foregroundColor(Color.white)
                .font(.title)
                .clipShape(Circle())
        }

         

    }
}

#Preview {
    CalcButtonNumView(title: "1") {
        print("Натиснуто 1")
    }
}
