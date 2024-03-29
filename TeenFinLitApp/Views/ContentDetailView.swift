//
//  ContentDetailView.swift
//  TeenFinLitApp
//
//  Created by Lucas Robbins on 1/17/23.
//

import SwiftUI
import AVKit

struct ContentDetailView: View {
    
    @EnvironmentObject var model: ContentModel
    
    var body: some View {
        
        let lesson = model.currentLesson
        
        VStack{
            
            //TODO: Description
            CodeTextView()
            
            //Show next lesson button only if there is a next lesson
            if model.hasNextLesson() {
                
            Button(action: {
                
                //Advance the lesson
                
                model.nextLesson()
            }, label: {
                
                ZStack {
                    
                    RectangleCard(color: Color.green)
                        .frame (height: 48)

                    
                Text ("Next Lesson: \(model.currentModule!.content.lessons[model.currentLessonIndex + 1].title)")
                        .foregroundColor(Color.white)
                        .bold()
                    }
                })
            }
            else{
                //Show complete button instead
                Button(action: {
                    
                    //Take user back to homeview
                    model.currentContentSelected = nil
                    
                }, label: {
                    
                    ZStack {
                        
                        RectangleCard(color: Color.green)
                        .frame (height: 48)

                    Text ("Complete")
                            .foregroundColor(Color.white)
                            .bold()
                        }
                    })
            }
        }
        .padding()
        .navigationBarTitle(lesson?.title ?? "")
    }
}

struct ContentDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ContentDetailView()
    }
}
