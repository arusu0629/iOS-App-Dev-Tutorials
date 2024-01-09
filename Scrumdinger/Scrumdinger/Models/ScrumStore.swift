//
//  ScrumStore.swift
//  Scrumdinger
//
//  Created by af_nakandakari_toru on 2024/01/09.
//

import Foundation
import SwiftUI

class ScrumStore: ObservableObject {
    @Published var scrums: [DailyScrum] = []

    private static func fileURL() throws -> URL {
        try FileManager.default.url(for: .documentDirectory,
                                    in: .userDomainMask,
                                    appropriateFor: nil,
                                    create: false)
        .appendingPathComponent("scrums.data")
    }
}
