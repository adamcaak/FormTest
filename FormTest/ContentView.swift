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
    @State private var include: Bool = true
    @State private var hasNotfications: Bool = false
    
    
    var body: some View {
        Form {
            TextField("Name:", text: $name)
            TextField("Email:",  text: $email)
            TextEditor(text: $message)
            Toggle("Include Logs", isOn: $include)
            Toggle(isOn: $hasNotfications){
                Text("Notifications")
            }
        }
    }
}

#Preview {
    ContentView()
}
