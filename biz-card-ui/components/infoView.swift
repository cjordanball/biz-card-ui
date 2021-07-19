//
//  infoView.swift
//  biz-card-ui
//
//  Created by C. Jordan Ball III on 7/18/21.
//

import SwiftUI

struct InfoView: View {
    var image: String;
    var insertedText: String;
    var body: some View {
        RoundedRectangle(cornerRadius: 40.0)
            .fill(Color.white)
            .frame(height: 40)
            .overlay(
                HStack {
                    Image(systemName: image)
                        .foregroundColor( Color(red: 0.09, green: 0.63, blue: 0.52))
                    Text(insertedText)
                }
            )
            .foregroundColor(Color(red: 0.09, green: 0.63, blue: 0.52))
            .padding(.all)
    }
}
