//
//  StockRankViewModel.swift
//  StockRankSwiftUI
//
//  Created by Aaron on 2022/12/11.
//

import Foundation

final class StockRankViewModel: ObservableObject {
    @Published var models: [StockModel] = StockModel.list
    
    var numOfFavorites: Int {
        let favoriteStocks = models.filter { $0.isFavorite }
        return favoriteStocks.count
    }
    
}
