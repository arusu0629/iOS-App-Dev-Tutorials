//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by af_nakandakari_toru on 2024/01/05.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.sampleData

    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $scrums)
        }
    }
}
