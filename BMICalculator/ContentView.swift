//
//  ContentView.swift
//  BMICalculator
//
//  Created by Kavindu Lakshan Jayathilake on 2023-03-10.
//

import SwiftUI

struct ContentView: View {
    @State private var weight = ""
    @State private var height = ""
    @State private var bmi: Double = 0
    
    var body: some View {
        VStack {
            Text("BMI CALCULATOR").font(.largeTitle)
            TextField("Enter weight in kilograms(kg)", text: $weight)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .border(.black)
//                .onChange(of: weight) { newValue in
//                    print("New value is \(newValue)")
//                }
            TextField("Enter height in meters(m)", text: $height)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .border(.black)
            Button {
                let weight = Double(weight) ?? 0.0
                let height = Double(height) ?? 0.0
                self.bmi = weight / (height * height)
            } label: {
                Text("Calculate")
                    .padding()
                    .background(Color.green)
                    .tint(.black)
            }
            Text("\(bmi, specifier: "%.1f")")
                .font(.title)
                .tint(.red)
        }
        .background(Color.gray.opacity(0.4))
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
