//
//  MeetingTimerView.swift
//  Scrumdinger
//
//  Created by af_nakandakari_toru on 2024/04/04.
//

import SwiftUI

struct MeetingTimerView: View {
    let speakers: [ScrumTimer.Speaker]
    let theme: Theme

    private var currenctSpeaker: String {
        speakers.first(where: { !$0.isCompleted })?.name ?? "Someone"
    }

    var body: some View {
        Circle()
            .strokeBorder(lineWidth: 24)
            .overlay {
                VStack {
                    Text(currenctSpeaker)
                        .font(.title)
                    Text("is speaking")
                }
                .accessibilityElement(children: .combine)
                .foregroundStyle(theme.accentColor)
            }
    }
}

#Preview {
    MeetingTimerView(
        speakers:
            [
                ScrumTimer.Speaker(name: "Bill", isCompleted: true),
                ScrumTimer.Speaker(name: "Cathy", isCompleted: false)
            ],
        theme: .yellow
    )
}
