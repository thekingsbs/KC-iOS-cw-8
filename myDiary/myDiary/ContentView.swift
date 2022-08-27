//
//  ContentView.swift
//  myDiary
//
//  Created by Saleh Al Sedrah on 27/08/2022.
//

import SwiftUI

struct ContentView: View {
    
    let chooseColor = [Color.blue , Color.green , Color.yellow , Color.red]
    
    @State var entry = ""
    
    @State var background = Color.red 
    
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                Color.gray
                    .opacity(0.6)
                    .ignoresSafeArea()
                
                VStack {
                    
                    Text("Pick a color")
                        .font(.system(size: 30, weight: .semibold, design: .monospaced))
                    
                    HStack {
                        
                        ForEach(chooseColor, id:\.self) {
                            color in
                            
                            Circle()
                                .fill(color)
                                .frame(width: 50, height: 50)
                                .onTapGesture {
                                    background = color
                                }
                            
                        }
                        
                        
                    }.padding()
                    
                
                    TextField("Write your entry:", text: $entry)
                        .padding()
                        .frame(width: 390, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .background(Color.white)
                        .cornerRadius(25)

                    
                    NavigationLink(
                        destination: SecondView(secondBackground: background, entry2: entry ),
                        label: {
                            Text("Save Entry")
                                .frame(width: 150, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .background(Color.purple)
                                .cornerRadius(50)
                                .foregroundColor(.white)
                            
                            
                        }).padding()
                    
                    
                    
                    
                }
            }.navigationTitle("Diary")
            
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12")
    }
}
