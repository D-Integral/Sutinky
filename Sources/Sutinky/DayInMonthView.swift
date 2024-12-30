//
//  DayInMonthView.swift
//  Sutinky
//
//  Created by Dmytro Skorokhod on 30.12.2024.
//

import SwiftUI

struct DayInMonthView: View {
    @State private var viewModel: DayInMonthViewModel
    
    init(viewModel: ViewModel,
         day: Date) {
        self.viewModel = DayInMonthViewModel(generalViewModel: viewModel,
                                             day: day)
    }
    
    var body: some View {
        Button(action: {
            viewModel.selectDay()
        }) {
            Text(viewModel.humanReadableText)
                .frame(maxWidth: .infinity)
                .padding(8)
                .background(
                    viewModel.isSelected ? Color.blue : Color.clear
                )
                .cornerRadius(8)
        }
    }
}
