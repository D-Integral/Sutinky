//
//  MonthAndYearHeaderView.swift
//  Sutinky
//
//  Created by Dmytro Skorokhod on 30.12.2024.
//

import SwiftUI

// Header with Month and Year
struct MonthAndYearHeaderView: View {
    @ObservedObject private var viewModel: ViewModel
    
    init(viewModel: ViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        Text(viewModel.dateFormatter.string(from: viewModel.currentDate))
            .font(.title)
            .padding()
    }
}
