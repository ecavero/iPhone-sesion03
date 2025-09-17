//
//  LoanApplicatonScreen.swift
//  Sesion03
//
//  Created by user278712 on 9/16/25.
//

import SwiftUI

struct LoanApplicatonScreen: View {
    
    @State var selectedCustomerType: Int = 0
    //0: Normal. 1: Premium
    
    var body: some View {
        VStack {
            HStack {
                ToggleButton(text: "Normal", customerType: 0, selectedCustomerType: $selectedCustomerType)
                ToggleButton(text: "Premium", customerType: 1, selectedCustomerType: $selectedCustomerType)
            }
        }
    }
}

struct ToggleButton: View {
    let text: String
    let customerType: Int
    
    @Binding var selectedCustomerType: Int
    var body: some View {
        
        let color = if customerType == selectedCustomerType {
            Color.green
        } else {
            Color.white
        }
        Button(action: {selectedCustomerType = customerType}){
            VStack {
                Image(systemName: "person.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                Text(text)
            }.background(color)
        }
    }
}

#Preview {
    LoanApplicatonScreen()
}
