//
//  ToDo_iOS_appApp.swift
//  ToDo-iOS-app
//
//  Created by Brenda Henriquez on 12/22/23.
//

import FirebaseCore
import SwiftUI

@main
struct ToDo_iOS_appApp: App {
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
