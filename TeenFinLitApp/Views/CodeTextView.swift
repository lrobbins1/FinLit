//
//  CodeTextView.swift
//  TeenFinLitApp
//
//  Created by Lucas Robbins on 1/17/23.
//

import SwiftUI
import UIKit

struct CodeTextView: UIViewRepresentable {
    
    @EnvironmentObject var model: ContentModel
    
    func makeUIView(context: Context) -> UITextView {
        
        let textView = UITextView()
        textView.isEditable = false
        
        return textView
    }
    func updateUIView(_ textView: UITextView, context: Context) {
        
        //Set attributed text for the lesson
        textView.attributedText = model.codeText
        //Scroll back to top
        textView.scrollRectToVisible(CGRect(x: 0, y: 0, width: 1, height: 1), animated: false)
    }
}

struct CodeTextView_Previews: PreviewProvider {
    static var previews: some View {
        CodeTextView()
    }
}
