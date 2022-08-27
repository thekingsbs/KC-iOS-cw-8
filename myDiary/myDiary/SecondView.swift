//
//  SecondView.swift
//  myDiary
//
//  Created by Saleh Al Sedrah on 27/08/2022.
//

import SwiftUI

struct SecondView: View {
    
    let secondBackground: Color
    let entry2: String
    
    var body: some View {
        ZStack {
            secondBackground
                .ignoresSafeArea()
            VStack {
                Text(entry2)
                    .padding()
                    .font(.system(size: 40, weight: .semibold, design: .monospaced))
                
            }
        }
    }
    
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(secondBackground: Color.green, entry2: "test")
    }
}
