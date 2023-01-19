//
//  ContentViewRow.swift
//  TeenFinLitApp
//
//  Created by Lucas Robbins on 1/17/23.
//

import SwiftUI

struct ContentViewRow: View {
    
    @EnvironmentObject var model: ContentModel
    var index: Int
    
    var lesson: Lesson {
        
        if index < model.currentModule?.content.lessons.count ?? 0 {
            return model.currentModule!.content.lessons[index]
        }
        else {
            return Lesson(id: 0, title: "", video: "", explanation: "")
        }
        
    }
    
    var body: some View {
    
    // Lesson card
    ZStack (alignment: .leading) {
        
        Rectangle()
            .foregroundColor(Color("Second"))
            .cornerRadius(10)
            .shadow(radius: 5)
            .frame(height: 66)
            
        HStack(spacing: 30) {
            
            Text (String(index + 1))
                .bold()
            
            VStack (alignment: .leading) {
                Text (lesson.title)
                    .bold()
            }
        }
        .padding()
    }
    .padding(.bottom, 5)
    }
}
