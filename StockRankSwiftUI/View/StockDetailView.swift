//
//  StockDetailView.swift
//  StockRankSwiftUI
//
//  Created by Aaron on 2022/12/11.
//

import SwiftUI

struct StockDetailView: View {
    @Binding var stock: StockModel
    
    var body: some View {
        VStack {
            Image(stock.imageName)
            Text(stock.name)
            Text("\(stock.price) 원")
        }
        
    }
}

struct StockDetailView_Previews: PreviewProvider {
    static var previews: some View {
        StockDetailView(stock: .constant(StockModel.list[0]))
    }
}
