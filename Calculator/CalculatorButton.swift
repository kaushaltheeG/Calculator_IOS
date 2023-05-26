//
//  CalculatorButton.swift
//  Calculator
//
//  Created by Kaushal Kumbagowdana on 5/4/23.
//

import SwiftUI

struct CalculatorButton: View {
    var width: CGFloat = 70 //when a var is defined, args are able to be passed to modify var
    var backgroundColor = Color(hue: 1.0, saturation: 0.0, brightness: 0.283)
    var buttonVal: String = "1";
    var action: (CalculatorButton) -> Void = {_ in};
    var body: some View {
        Button {
            // method body when button is pressed
            action(self);
        } label: {
            Text(buttonVal)
                .font(.largeTitle)
                .frame(width: width, height: 70,
                       alignment: .center)
                .background(backgroundColor)
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 15))
                
        }

    }
}

struct CalculatorButton_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorButton()
    }
}
