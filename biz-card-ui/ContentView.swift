//
//  ContentView.swift
//  biz-card-ui
//
//  Created by C. Jordan Ball III on 7/18/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack {
                Image("CJB")
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .frame(width: 150, height: 150)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(Circle().stroke(Color.gray, lineWidth: 5)
                    )
                Text("C. Jordan Ball III")
                    .font(Font.custom("JacquesFrancoisShadow-Regular", size: 50))
                    .bold()
                    .foregroundColor(.white)
                    .scaledToFit()
                    .minimumScaleFactor(0.5)
                    .lineLimit(1)
//                    .bold()
//                    .foregroundColor(.white)
                    .padding()

                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25.0))
                Divider()
                VStack {
                    InfoView(image: "phone.fill", insertedText: "757-425-6200")
                    InfoView(image: "envelope.fill", insertedText: "cjordangall@ballwebdev.com")
                }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
