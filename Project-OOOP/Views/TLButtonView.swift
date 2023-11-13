//
//  TLButtonView.swift
//  Project-OOOP
//
//  Created by я даша on 13.11.2023.
//

import SwiftUI

struct TLButtonView: View {
    
    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
            } label: {
                ZStack {
                    RoundedRectangle(cornerRadius:10).foregroundColor(background)
                    Text(title).foregroundColor(Color.white).bold()
                }
        }
            .padding()
    }
}

struct TLButtonView_Previews: PreviewProvider {
    static var previews: some View {
        TLButtonView(title: "uiiiii", background: .black) {
            // Action
        }
    }
}
