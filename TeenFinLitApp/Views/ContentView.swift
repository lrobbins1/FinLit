//
//  ContentView.swift
//  TeenFinLitApp
//
//  Created by Lucas Robbins on 9/24/22.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var model: ContentModel
    
    var body: some View {
        
        ScrollView {
            
            LazyVStack {
                
               //Confirm that currentModule is set
                if model.currentModule != nil {
                
                    ForEach(0..<model.currentModule!.content.lessons.count) { index in
    
                        NavigationLink(
                        destination:
                            ContentDetailView()
                            .onAppear(perform: {
                                model.beginLesson(index)
                            }),
                        label: {
                            ContentViewRow(index: index)
                            
                        })
                        
                    }
                }
                
            }
            .accentColor(.black)
            .padding()
            .navigationBarTitle("\(model.currentModule?.category ?? "")")
        }
    }
}
