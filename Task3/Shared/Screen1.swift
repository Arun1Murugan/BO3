//
//  Screen1.swift
//  Task3
//
//  Created by Arun_Skyraan on 16/09/22.
//

import SwiftUI


//var carImages : [String] = ["c1", "c2", "c3", "c4", "c5"]
//var carTitles : [String] = ["Ford", "ferrori", "Posche", "holden", "Jensen"]
//
//var bikeImages : [String] = ["b1", "b2", "b3", "b4", "b5"]
//var bikeTitles : [String] = ["Raven", "Pegasus", "Bonnie", "Ebony", "Stiletto"]
//
//var logoImages : [String] = ["l1", "l2", "l3", "l4", "l5"]
//var logiTitle : [String] = ["Community", "Nature", "Health", "Accenture", "GitHub"]


struct Screen1: View {
    
    @State var Curr_Img : [myStruct]
    
//    let cloumn1 : [GridItem] = [GridItem(.flexible(), spacing: nil, alignment: nil)]
    
    @State var Selection : Int
    var body: some View {
        VStack {

                TabView(selection: $Selection){

                
            ForEach(0..<Curr_Img.count, id : \.self) { index in
                
                let item = Curr_Img[index]
                VStack {
                Image(item.img)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 400, height: 400)
                Text("\(item.title)")
                    }
                .tag(index)
            }

                }.tabViewStyle(.page)
        }
    }
}

struct Screen1_Previews: PreviewProvider {
    static var previews: some View {
        Screen1(Curr_Img: [myStruct(img: "c1", title: "DemoTest"),myStruct(img: "c2", title: "DemoTest"),myStruct(img: "c3", title: "DemoTest"),], Selection: 0)
    }
}
