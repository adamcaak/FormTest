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
    @State private var help = "Help"
    
    
    var body: some View {
        NavigationView() {
            Form {
                Section(header: Text("Personal Information")) {
                    TextField("Name:", text: $name)
                    TextField("Email:",  text: $email)
                }
                Section(header: Text("Message")) {
                    TextEditor(text: $message)
                }
                Section(header: Text("Options")) {
                    Toggle("Include Logs", isOn: $include)
                    Toggle(isOn: $hasNotfications){
                        Text("Notifications")
                    }
                }
                Section(footer: Text("Send form")) {
                    Button("Submit", action: {
                        print("Tapped Button")
                    })
                }
                Picker("Subject", selection: $help) {
                    ForEach(["Help", "Support", "Bug Report"], id: \.self) { subject in
                        Text(subject)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
