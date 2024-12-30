//
//  Sutinky.swift
//  Sutikny
//
//  Created by Dmytro Skorokhod on 30.12.2024.
//
import SwiftUI

public struct SutinkyCalendarView: View {
    @State private var viewModel = ViewModel()

    public init() {
        viewModel.dateFormatter.dateFormat = "MMMM yyyy"
    }

    public var body: some View {
        VStack {
            MonthAndYearHeaderView(viewModel: viewModel)
            
            WeekdaysHeaderView(viewModel: viewModel)
            
            DaysOfMonthView(viewModel: viewModel)
            
            NavigationButtonsView(viewModel: viewModel)
        }
    }
}

struct SutinkyCalendarView_Previews: PreviewProvider {
    static var previews: some View {
        SutinkyCalendarView()
    }
}
