//
//  ContentView.swift
//  ChallengeLesson5
//
//  Created by Rafael dos Santos Varela on 03.02.25.
//

import SwiftUI

struct ContentView: View {
    
    
    // This provides a empty List to start with, the @State is needed when the property is linked/used in the UI View. @State is also important cause UI updates autom. when words array changes
    @State var words: [String] = []
    
    // Now create the array that contains all the words you want
    var fruits: [String] = ["Morango", "Uva", "Banana", "Laranja", "Maçã"]
    // Here Starts the body
    
    var body: some View {
        
    // add a VStack to hold the List and the button
       
        VStack {
            
    //in the VStack place the List
    //The id: \.self part tells SwiftUI that each item in the words array is uniquely identified by its own value (which works because strings are unique and hashable).
            
            List(words, id: \.self) { word in
    //this is how is gonna be displayed
                Text(word)
                
               }
            
            Button("Tap here"){
    //here u creta an instance of the addRandomWord function
                addRandomWord( )
                
            }
                
            }
        
        
        }
    func addRandomWord () {
        
        if let randomWord = fruits.randomElement() {
            // the .append add the const. ramdomWord to the words array
            
            words.append(randomWord)
        }
        
     }
        
      
    }
   
   




#Preview {
    ContentView()
}
