//
//  ContentView.swift
//  ChallengeLesson5
//
//  Created by Rafael dos Santos Varela on 03.02.25.
//

import SwiftUI

struct ContentView: View {
    
    
    // This provides a empty List to start with, the @State is needed when the property is linked/used in the UI View
    @State var words: [String] = []
    
    // Now create the array that contains all the words you want
    var fruits: [String] = ["Morango", "Uva", "Banana", "Laranja", "Maçã"]
    // Here Starts the body
    
    var body: some View {
        
    // add a VStack to hold the List and the button
       
        VStack {
            
    //in the VStack place the List
            
            List(words, id: \.self) { word in
                
                Text(word)
                
               }
            
            Button("Tap here"){
                
                addRandomWord( )
                
            }
                
            }
        
        
        }
    func addRandomWord () {
        
        if let randomWord = fruits.randomElement() {
            words.append(randomWord)
        }
        
     }
        
      
    }
   
   




#Preview {
    ContentView()
}
