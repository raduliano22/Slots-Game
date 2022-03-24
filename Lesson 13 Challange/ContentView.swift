//
//  ContentView.swift
//  Lesson 13 Challange
//
//  Created by Octav Radulian on 21.02.2022.
//

import SwiftUI

struct ContentView: View {
    
    var myArray = ["apple", "cherry", "star"]
    
    @State var creditNumber = 1000
    
    @State var firstImage: String = "star"
    @State var secondImage: String = "star"
    @State var thirdImage: String = "star"
    
    
    var body: some View {
        
        // Building the UI
        VStack {
            Spacer()
            Text("SwiftUI Slots")
            Spacer()
            Text("Credits: \(creditNumber)")
            Spacer()
            HStack {
                
                Image(firstImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    
                Image(secondImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Image(thirdImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                
                
            }
            
            Spacer()
            
            Button {
                
                firstImage = myArray.randomElement()!
                secondImage = myArray.randomElement()!
                thirdImage = myArray.randomElement()!
                
                if (firstImage == secondImage) && (secondImage == thirdImage) {
                    creditNumber += 65
                } else {
                    creditNumber -= 10
                }
                
                
            } label: {
                Text("Spin")
                    .padding()
                    .foregroundColor(.white)
                    .background(.red)
                    .cornerRadius(20)
            }
            
            Spacer()

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
