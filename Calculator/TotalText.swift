//
//  TotalText.swift
//  Calculator
//
//  Created by Kaushal Kumbagowdana on 5/4/23.
//

import SwiftUI

struct TotalText: View {
    var value = "0"
    var body: some View {
        Text(value)
            .font(.system(size: 60))
            .foregroundColor(.white)
            .padding()
            //.trailling aligns it to the right
            .frame(width: 300, alignment: .trailing)
    }
}

struct TotalText_Previews: PreviewProvider { //preview for what is show
    static var previews: some View {
        TotalText()
            .background(.black)
    }
}
