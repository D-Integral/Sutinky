//
//  DayInMonthViewModel.swift
//  Sutinky
//
//  Created by Dmytro Skorokhod on 30.12.2024.
//

import SwiftUI
import Combine

@MainActor
class DayInMonthViewModel: ObservableObject {
    @ObservedObject private var generalViewModel: ViewModel
    
    @Published private var day: Date
    
    init(generalViewModel: ViewModel, day: Date) {
        self.generalViewModel = generalViewModel
        self.day = day
    }
    
    func selectDay() {
        generalViewModel.selectedDate = day
    }
    
    var isSelected: Bool {
        return generalViewModel.selectedDate == day
    }
    
    var humanReadableText: String {
        return "\(generalViewModel.calendar.component(.day, from: day))"
    }
}
