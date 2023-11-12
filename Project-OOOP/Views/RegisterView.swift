//
//  RegisterView.swift
//  Project-OOOP
//
//  Created by я даша on 15.10.2023.
//

import SwiftUI

struct RegisterView: View {
    var body: some View {
        VStack {
            // Header
            HeaderView(title:"Реєстрація", subtitle: "почни планувати вже зараз")
            
            
            Spacer()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
