//
//  ButtonGrid.swift
//  Calculator
//
//  Created by Kaushal Kumbagowdana on 5/4/23.
//

import SwiftUI

enum CalculatorOperations {
    case notSet
    case addition
    case subtraction
    case multiplication
    case division
}

struct ButtonGrid: View {
    @Binding var currentValue: String
    @State var currentOperation: CalculatorOperations = .notSet
    @State var hasPreviousOperation: Bool = false;
    var body: some View {
        Grid { //grid view
            GridRow {
                CalculatorButton(backgroundColor: .gray, buttonVal: "AC", action: clearWasPressed)
                CalculatorButton(backgroundColor: .gray, buttonVal: "+/-")
                CalculatorButton(backgroundColor: .gray, buttonVal: "%") // divides by 100
                CalculatorButton(backgroundColor: .orange, buttonVal: "/", action: operationWasPressed, operation: .division)
            }
            GridRow {
                CalculatorButton(action: numberWasPressed)
                CalculatorButton(buttonVal: "2", action: numberWasPressed)
                CalculatorButton(buttonVal: "3", action: numberWasPressed)
                CalculatorButton(backgroundColor: .orange, buttonVal: "X", action: operationWasPressed, operation: .multiplication)
            }
            GridRow {
                CalculatorButton(buttonVal: "4", action: numberWasPressed)
                CalculatorButton(buttonVal: "5", action: numberWasPressed)
                CalculatorButton(buttonVal: "6", action: numberWasPressed)
                CalculatorButton(backgroundColor: .orange, buttonVal: "-", action: operationWasPressed, operation: .subtraction)
            }
            GridRow {
                CalculatorButton(buttonVal: "7", action: numberWasPressed)
                CalculatorButton(buttonVal: "8", action: numberWasPressed)
                CalculatorButton(buttonVal: "9", action: numberWasPressed)
                CalculatorButton(backgroundColor: .orange, buttonVal: "+", action: operationWasPressed, operation: .addition)
            }
            GridRow {
                CalculatorButton(width: 148, buttonVal: "0", action: numberWasPressed)
                    .gridCellColumns(2) //take 2 columns within the grid
                CalculatorButton(buttonVal: ".")
                CalculatorButton(backgroundColor: .orange, buttonVal: "=", action: equalWasPressed)
            }
        }
    }
     
    func numberWasPressed(button: CalculatorButton) {
//        let currentValInt = Int(currentValue + button.buttonVal)!; // ! could cause your app to crash | bad practice
        if let currentValInt = Int(currentValue + button.buttonVal) {
            currentValue = "\(currentValInt)";
        } else {
            currentValue = "Error";
        }
    }
    
    func operationWasPressed(button: CalculatorButton) {
        currentOperation = button.operation;
        print("\(currentOperation)");
    }
    
    func clearWasPressed(button: CalculatorButton) {
        print("clear was pressed");
    }
    
    func equalWasPressed(button: CalculatorButton) {
        print("equal was pressed");
    }
}

struct ButtonGrid_Previews: PreviewProvider {
    @State static var currentValue = "1";
    static var previews: some View {
        ButtonGrid(currentValue: $currentValue)
    }
}
