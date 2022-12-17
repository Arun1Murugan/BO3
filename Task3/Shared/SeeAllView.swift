//
//  SeeAllView.swift
//  Task3
//
//  Created by Arun_Skyraan on 16/09/22.
//

import SwiftUI

struct SeeAllView: View {
   
//    @State var whichImage : [String]
//    @State var WhichTitle : [String]
    @State var whichImageAndTitle : [myStruct]
    
    @State var myTitle : String
    
    let cloumn1 : [GridItem] = [GridItem(.flexible(), spacing: nil, alignment: nil),
                                GridItem(.flexible(), spacing: nil, alignment: nil)]
    
    var body: some View {
        
        VStack {
            
           
            ScrollView(.vertical){
                Text("\(myTitle)")
                    .font(.title)
                    .bold()
                    .frame( width: 350, alignment: .leading)
                LazyVGrid(columns : cloumn1) {
                
            ForEach(0..<whichImageAndTitle.count, id : \.self) { index in
                
                let item = whichImageAndTitle[index]
                NavigationLink(destination: {
                    Screen1(Curr_Img: whichImageAndTitle, Selection: index)
                }, label: {
                    VStack {
                    Image(item.img)
                        .resizable()
                        .scaledToFit()
    //                    .frame(height: 300)
                    Text("\(item.title)")
                    }
                })
              
                
               
            }
            }
            }
        }
        
        
    }
}

struct SeeAllView_Previews: PreviewProvider {
    static var previews: some View {
        SeeAllView(whichImageAndTitle: [myStruct(img: "c1", title: "demotest")], myTitle: "DemoTitle")
    }
}
