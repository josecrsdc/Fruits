//
//  FruitNutrientesView.swift
//  Fruits
//
//  Created by Jose Carlos Rodriguez on 6/3/23.
//

import SwiftUI

struct FruitNutrientesView: View {
    
    var fruit: Fruit
    let nutrients: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    
    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutricional value per 100g") {
                ForEach(0..<nutrients.count, id: \.self ) { item in
                    Divider().padding(.vertical, 2)
                    
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        }
    }
}

struct FruitNutrientesView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientesView(fruit: fruitsData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 460))
            .padding()
    }
}
