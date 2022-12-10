//
//  StockRankRow.swift
//  StockRankSwiftUI
//
//  Created by Aaron on 2022/12/10.
//

import SwiftUI

struct StockRankRow: View {
    var body: some View {
        HStack {
            Text("1")
            
            Image("TSLA")
            
            VStack {
                Text("TSLA")
                HStack {
                    Text("3,538,631 원")
                    Text("+0.04%")
                }
            }
            
            Image(systemName: "heart.fill")
        }
    }
}

struct StockRankRow_Previews: PreviewProvider {
    static var previews: some View {
        StockRankRow()
    }
}
