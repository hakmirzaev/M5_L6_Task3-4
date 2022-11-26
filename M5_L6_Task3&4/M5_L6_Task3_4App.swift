//
//  M5_L6_Task3_4App.swift
//  M5_L6_Task3&4
//
//  Created by Bekhruz Hakmirzaev on 26/11/22.
//

import SwiftUI

@main
struct M5_L6_Task3_4App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            SignInScreen()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
