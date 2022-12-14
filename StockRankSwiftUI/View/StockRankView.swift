//
//  ContentView.swift
//  StockRankSwiftUI
//
//  Created by Aaron on 2022/12/10.
//

import SwiftUI

struct StockRankView: View {
    @StateObject var viewModel = StockRankViewModel()
    
    var body: some View {
        NavigationView {
            List($viewModel.models) { $item in
                // ZStack 꼼수: 기본 NavitionView/Link의 디자인을 무력화하기
                ZStack {
                    NavigationLink {
                        StockDetailView(viewModel: viewModel, stock: $item)
                    } label: {
                        EmptyView()
                    }
                    
                    StockRankRow(stock: $item)
                }
                .listRowInsets(EdgeInsets())
                .frame(height: 80)
            }
            .listStyle(.plain)
            .navigationTitle("Stock Rank")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        StockRankView()
    }
}
