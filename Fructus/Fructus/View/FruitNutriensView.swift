//
//  FruitNutriensView.swift
//  Fructus
//
//  Created by Baris Saraldi on 17.08.2021.
//

import SwiftUI

struct FruitNutriensView: View {
    
    var fruit: Fruit
    let nutrients: [String] = ["Energy","Sugar","Fat","Proetin","Vitamins","Minerals"]
    
    var body: some View {
        
        GroupBox() {
            
            DisclosureGroup("Nutritional value per 100g") {
                ForEach(0..<nutrients.count, id: \.self) { item in
                    Divider().padding(.vertical, 2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        
                        Text(fruit.nutrition[item])
                    }
                }
            }
        }
    }
}

struct FruitNutriensView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutriensView(fruit: fruitsData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 370, height: 480))
            .padding()
    }
}
