//
//  ContentView.swift
//  WeatherForecast
//
//  Created by af_nakandakari_toru on 2024/01/04.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            DayForecast(day: "Mon", isRainy: false, high: 70, low: 50)

            DayForecast(day: "Tue", isRainy: true, high: 60, low: 40)
//
//            VStack {
//                Text("Tue")
//                Image(systemName: "cloud.rain.fill")
//                    .foregroundColor(.blue)
//                Text("High: 60")
//                Text("Low: 40")
//            }
//            .padding()
        }
    }
}

#Preview {
    ContentView()
}

struct DayForecast: View {
    let day: String
    let isRainy: Bool
    let high: Int
    let low: Int

    var iconName: String {
        if isRainy {
            return "cloud.rain.fill"
        } else {
            return "sun.max.fill"
        }
    }

    var iconColor: Color {
        if isRainy {
            return .blue
        } else {
            return .yellow
        }
    }

    var body: some View {
        VStack {
            Text(day)
                .font(.headline)
            Image(systemName: iconName)
                .foregroundColor(iconColor)
                .font(.largeTitle)
                .padding(5)
            Text("High: \(high)")
                .fontWeight(.semibold)
            Text("Low: \(low)")
                .fontWeight(.medium)
                .foregroundStyle(.secondary)
        }
        .padding()
    }
}
