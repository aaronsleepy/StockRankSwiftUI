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
                .font(.system(size: 16, weight: .bold))
                .frame(width: 30)
                .foregroundColor(.blue)
            
            Image("TSLA")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40)
            
            VStack(alignment: .leading, spacing: 5) {
                Text("TSLA")
                    .font(.system(size: 12))
                    .foregroundColor(.white)
                
                HStack {
                    Text("3,538,631 원")
                        .font(.system(size: 12))
                        .foregroundColor(.gray)
                    Text("+0.04%")
                        .font(.system(size: 12))
                        .foregroundColor(.red)
                }
            }
            
            Spacer()
            
            Image(systemName: "heart.fill")
                .resizable()
                .renderingMode(.template)
                .aspectRatio(contentMode: .fit)
                .frame(width: 40)
                .foregroundColor(.gray)
                
                
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(.black)
    }
}

struct StockRankRow_Previews: PreviewProvider {
    static var previews: some View {
        StockRankRow()
    }
}
