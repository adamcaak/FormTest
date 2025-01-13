//
//  ContentView.swift
//  FormTest
//
//  Created by Łukasz Adamczak on 13/01/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var message: String = "Write your message..."
    
    var body: some View {
        Form {
            TextField("Name:", text: $name)
            TextField("Email:",  text: $email)
            TextEditor(text: $message)
        }
    }
}

#Preview {
    ContentView()
}
