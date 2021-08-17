//
//  StartButtonView.swift
//  Fructus
//
//  Created by Baris Saraldi on 17.08.2021.
//

import SwiftUI

struct StartButtonView: View {
    @AppStorage("isOnboarding") var isOnbarding: Bool?
    
    var body: some View {
       
        Button(action: {
            isOnbarding = false
        }) {
            HStack(spacing: 8) {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
        .padding(.horizontal, 16)
        .padding(.vertical, 10)
            .background(Capsule().strokeBorder(Color.white, lineWidth: 1.25))
        }
        .accentColor(Color.white)
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
