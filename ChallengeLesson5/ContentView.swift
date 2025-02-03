//
//  ContentView.swift
//  ChallengeLesson5
//
//  Created by Rafael dos Santos Varela on 03.02.25.
//

import SwiftUI

struct ContentView: View {
    
    var chosenWord: String = "Morango"
    var words: [String] = ["Morango", "Uva", "Banana", "Laranja", "Maçã"]
    
    
    var body: some View {
       
        
        List {
            Text("\(chosenWord)")
            
        }
        Button("Tap me") {
        RandomWord( )
        }
        
      
    }
   func RandomWord () {
        
       chosenWord = words.randomElement
        
        
    }
   
}



#Preview {
    ContentView()
}
