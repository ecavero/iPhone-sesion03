//
//  MenuLoanScreen.swift
//  Sesion03
//
//  Created by user278712 on 9/16/25.
//

import SwiftUI

struct MenuLoanScreen: View {
    var body: some View {
        NavigationStack {
            NavigationLink(destination: LoanApplicatonScreen()) {
                Text("Prestamos")
            }
        }
    }
}


#Preview {
    MenuLoanScreen()
}
