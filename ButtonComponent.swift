//
//  ButtonComponent.swift
//  Sesion03
//
//  Created by user278712 on 9/16/25.
//

import SwiftUI

struct ButtonComponent: View {
    var body: some View {
        Button("Hola", action:  {
            print("Hola")
        })
            
        
    }
}

#Preview {
    ButtonComponent()
}
