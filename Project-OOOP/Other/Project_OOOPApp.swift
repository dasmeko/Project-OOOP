//
//  Project_OOOPApp.swift
//  Project-OOOP
//
//  Created by я даша on 09.10.2023.
//
import FirebaseCore
import SwiftUI

@main
struct Project_OOOPApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
