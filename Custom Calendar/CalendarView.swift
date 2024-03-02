//
//  ContentView.swift
//  Custom Calendar
//
//  Created by Leonard McCook-Carr on 2/29/24.
//

import SwiftUI

struct CalendarView: View {
    @State private var color: Color = .blue
    @State private var date = Date.now
    let daysOfWeek = Date.capitalizedFirstLettersOfWeekdays
    var body: some View {
        VStack {
            LabeledContent("Calendar Color") {
                ColorPicker("",  selection: $color, supportsOpacity: false)
            }
            LabeledContent("Date/Time") {
                DatePicker("",  selection: $date)
            }
        }
        .padding()
    }
}

#Preview {
    CalendarView()
}
