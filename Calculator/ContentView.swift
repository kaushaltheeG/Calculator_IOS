//
//  ContentView.swift
//  Calculator
//
//  Created by Kaushal Kumbagowdana on 5/4/23.
//

import SwiftUI

struct ContentView: View {
    // @State bring var into global space and will modify the value throught the app
    @State var currentValue: String = "0";
    var body: some View {
//        VStack { //organizes items vertically
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundColor(.accentColor)
//            Text(hello)
//        }
//        .padding()
//        HStack { organizes items horizontally
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundColor(.accentColor)
//            Text(hello)
//        }
        ZStack { //z axis, can lay componets on top of each other
            Color.black
            VStack {
                TotalText(value: currentValue)
                ButtonGrid(currentValue: $currentValue)
            }
            .padding()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
