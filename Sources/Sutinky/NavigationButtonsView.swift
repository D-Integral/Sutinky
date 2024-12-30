//
//  NavigationButtonsView.swift
//  Sutinky
//
//  Created by Dmytro Skorokhod on 30.12.2024.
//

import SwiftUI

// Navigation buttons
struct NavigationButtonsView: View {
    @ObservedObject private var viewModel: ViewModel
    
    init(viewModel: ViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        HStack {
            PreviousNavigationButtonView(viewModel: viewModel)
            Spacer()
            NextNavigationButtonView(viewModel: viewModel)
        }
        .padding()
    }
}
