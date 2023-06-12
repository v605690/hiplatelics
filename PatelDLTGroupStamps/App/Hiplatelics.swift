//
//  HiplatelicsApp.swift
//  Hiplatelics
//
//  Created by patelpra on 4/8/23.
//

import SwiftUI

@main
struct Hiplatelics: App {
    var body: some Scene {
        WindowGroup {
          MainView(stamps: [Stamp](), stampImage: StampImage(name: ""))
        }
    }
}
