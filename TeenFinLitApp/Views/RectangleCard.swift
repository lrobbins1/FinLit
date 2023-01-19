//
//  RectangleCard.swift
//  TeenFinLitApp
//
//  Created by Lucas Robbins on 1/17/23.
//

import SwiftUI

struct RectangleCard: View {
    
    var color: Color = Color("Second")
    var body: some View {
        
        Rectangle()
            .foregroundColor(color)
            .cornerRadius(10)
            .shadow(radius: 5)
    }
}
struct RectangleCard_Previews: PreviewProvider {
    static var previews: some View {
        RectangleCard()
    }
}
