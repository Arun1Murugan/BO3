//
//  ContentView.swift
//  Shared
//
//  Created by Arun_Skyraan on 19/09/22.
//

import SwiftUI

struct ContentView: View {
    
    
    let column1 : [GridItem] = [
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil)
        ]
    
    var body: some View {
        VStack {
            HStack(spacing : 140) {
                Image(systemName: "menucard")
                    .font(.headline)
                Text("Logo")
                Image(systemName: "magnifyingglass")
            }.padding()
            ScrollView(.horizontal) {
            HStack(spacing : 50) {
                NavigationLink(destination: {
                    
                }, label: {
                    Text("Backpacks")
                })
                NavigationLink(destination: {
                    
                }, label: {
                    Text("Backpacks")
                })
                NavigationLink(destination: {
                    
                }, label: {
                    Text("Backpacks")
                })
                NavigationLink(destination: {
                    
                }, label: {
                    Text("Backpacks")
                })
                NavigationLink(destination: {
                    
                }, label: {
                    Text("Backpacks")
                })
            }
                LazyVGrid(columns: column1) {
                    ForEach(0..<10){ index in
                        
                        Text("\(index)")
                        
                    }
                }
            }
            
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
