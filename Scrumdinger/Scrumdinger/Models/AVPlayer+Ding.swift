//
//  AVPlayer+Ding.swift
//  Scrumdinger
//
//  Created by af_nakandakari_toru on 2024/01/07.
//

import Foundation
import AVFoundation

extension AVPlayer {
    static let sharedDingPlayer: AVPlayer = {
        guard let url = Bundle.main.url(forResource: "ding", withExtension: "wav") else {
            fatalError("Failed to find sound file.")
        }
        return AVPlayer(url: url)
    }()
}
