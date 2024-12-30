//
//  WeekdaysHeaderView.swift
//  Sutinky
//
//  Created by Dmytro Skorokhod on 30.12.2024.
//

import SwiftUI

// Weekdays header
struct WeekdaysHeaderView: View {
    @ObservedObject private var viewModel: ViewModel
    
    init(viewModel: ViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        HStack {
            ForEach(viewModel.calendar.shortWeekdaySymbols, id: \.self) { weekday in
                Text(weekday)
                    .frame(maxWidth: .infinity)
            }
        }
    }
}
