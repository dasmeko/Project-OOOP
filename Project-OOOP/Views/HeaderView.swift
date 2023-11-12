//
//  HeaderView.swift
//  Project-OOOP
//
//  Created by я даша on 12.11.2023.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let subtitle: String

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0).foregroundColor(Color.blue)
            
            VStack {
                Text(title)
                    .font(.system(size: 50))
                    .foregroundColor(Color.white)
                    .bold()
                Text(subtitle)
                    .font(.system(size: 30))
                    .foregroundColor(Color.white)
            }
            
        }
        .frame(width: UIScreen.main.bounds.width * 3, height: 200)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(title: "hihi", subtitle: "hehe")
    }
}
