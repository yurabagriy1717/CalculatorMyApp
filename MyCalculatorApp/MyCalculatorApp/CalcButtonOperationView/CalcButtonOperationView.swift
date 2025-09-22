//
//  CalcButtonOperation.swift
//

import SwiftUI

struct CalcButtonOperation: View {
    
    let title: String    
    let action : () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            Text(title)
                .frame(width: 80, height: 80)
                .background(Color.orange)
                .foregroundColor(Color.white)
                .font(.title)
                .clipShape(Circle())
        }

         

    }
}


#Preview {
    CalcButtonOperation(title: "+") {
        print("Натиснуто +")
    }
}
