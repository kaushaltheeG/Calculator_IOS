//
//  ButtonGrid.swift
//  Calculator
//
//  Created by Kaushal Kumbagowdana on 5/4/23.
//

import SwiftUI

struct ButtonGrid: View {
    var body: some View {
        Grid { //grid view
            GridRow {
                CalculatorButton(backgroundColor: .gray, buttonVal: "AC" )
                CalculatorButton(backgroundColor: .gray, buttonVal: "+/-")
                CalculatorButton(backgroundColor: .gray, buttonVal: "%") // divides by 100
                CalculatorButton(backgroundColor: .orange, buttonVal: "/")
            }
            GridRow {
                CalculatorButton()
                CalculatorButton(buttonVal: "2")
                CalculatorButton(buttonVal: "3")
                CalculatorButton(backgroundColor: .orange, buttonVal: "X")
            }
            GridRow {
                CalculatorButton(buttonVal: "4")
                CalculatorButton(buttonVal: "5")
                CalculatorButton(buttonVal: "6")
                CalculatorButton(backgroundColor: .orange, buttonVal: "-")
            }
            GridRow {
                CalculatorButton(buttonVal: "7")
                CalculatorButton(buttonVal: "8")
                CalculatorButton(buttonVal: "9")
                CalculatorButton(backgroundColor: .orange, buttonVal: "+")
            }
            GridRow {
                CalculatorButton(width: 148, buttonVal: "0")
                    .gridCellColumns(2) //take 2 columns within the grid
                CalculatorButton(buttonVal: ".")
                CalculatorButton(backgroundColor: .orange, buttonVal: "=")
            }
        }
    }
}

struct ButtonGrid_Previews: PreviewProvider {
    static var previews: some View {
        ButtonGrid()
    }
}
