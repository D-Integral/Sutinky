//
//  DaysOfMonthView.swift
//  Sutinky
//
//  Created by Dmytro Skorokhod on 30.12.2024.
//

import SwiftUI

// Days of the month
struct DaysOfMonthView: View {
    @ObservedObject private var viewModel: ViewModel
    
    init(viewModel: ViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        let daysInMonth = viewModel.daysInMonth()
        LazyVGrid(columns: Array(repeating: .init(.flexible()), count: 7)) {
            ForEach(daysInMonth, id: \.self) { day in
                DayInMonthView(viewModel: viewModel, day: day)
            }
        }
        .padding()
    }
}
