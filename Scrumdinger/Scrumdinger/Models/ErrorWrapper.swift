//
//  ErrorWrapper.swift
//  Scrumdinger
//
//  Created by af_nakandakari_toru on 2024/04/04.
//

import Foundation

struct ErrorWrapper: Identifiable {
    let id: UUID
    let error: Error
    let guidance: String

    init(id: UUID = UUID(), error: Error, guidance: String) {
        self.id = id
        self.error = error
        self.guidance = guidance
    }
}
