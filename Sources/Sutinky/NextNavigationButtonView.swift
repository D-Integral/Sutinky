//
//  NextNavigationButtonView.swift
//  Sutinky
//
//  Created by Dmytro Skorokhod on 30.12.2024.
//

import SwiftUI

// Navigation buttons
struct NextNavigationButtonView: View {
    @ObservedObject private var viewModel: ViewModel
    
    init(viewModel: ViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        Button(String(localized: "Next")) {
            viewModel.currentDate = viewModel.calendar.date(byAdding: .month, value: 1, to: viewModel.currentDate)!
        }
    }
}
