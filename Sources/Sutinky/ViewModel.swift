//
//  ViewModel.swift
//  Sutinky
//
//  Created by Dmytro Skorokhod on 30.12.2024.
//

import SwiftUI
import Combine

class ViewModel: ObservableObject {
    let calendar = Calendar.current
    
    let dateFormatter = DateFormatter()
    
    @Published var selectedDate: Date? = nil
    @Published var currentDate: Date = Date()
    
    func daysInMonth() -> [Date] {
        guard let range = calendar.range(of: .day, in: .month, for: currentDate) else { return [] }
        guard let firstDayOfMonth = calendar.date(from: calendar.dateComponents([.year, .month], from: currentDate)) else { return [] }
        
        let days = range.compactMap {
            calendar.date(byAdding: .day, value: $0 - 1, to: firstDayOfMonth) ?? nil
        }
        
        return days
    }
}
