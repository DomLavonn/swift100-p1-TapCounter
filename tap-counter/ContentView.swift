//
//  ContentView.swift
//  tap-counter
//
//  Created by Domanik Johnson on 12/30/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var counter = 0
    
    var body: some View {
        VStack {
            Spacer()
            Text("Tap Counter").fontWeight(Font.Weight.black)
                .font(.system(size: 45, design: .monospaced))
                .foregroundColor(Color.blue)
            
            
            Text("Press button to Count").font(.system(.title3, design: .monospaced).weight(.semibold)
            ).foregroundColor(Color.blue)
            
            Spacer()
            Divider()
        
            Text("\(self.counter)")
            Divider()
            Spacer()
            Button(action: {
                counter+=1
            }, label: {
                ZStack{
                    Capsule()
                        .fill(.red)
                        .frame(width: 280, height: 60)
                    
                    Text("Press Me!")
                        .font(.title3)
                        .accentColor(.black)
                        .fontWeight(.bold)
                }
            })
            
            Button(action: {
                self.counter = 0
            }, label: {
                ZStack{
                    Capsule()
                        .fill(.green)
                        .frame(width: 280, height: 60)
                    Text("Reset")
                        .font(.title3)
                        .accentColor(.black)
                        .fontWeight(.bold)
                }
                
            })
            
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
