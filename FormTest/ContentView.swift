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
    @State private var phone: String = ""
    @State private var message: String = "Write your message..."
    @State private var include: Bool = true
    @State private var hasNotfications: Bool = false
    @State private var help = "Help"
    @State private var preferedContactMethod = ContactMethod.email
    
    
    enum ContactMethod {
        case email
        case phone
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Personal Information")) {
                    TextField("Name:", text: $name)
                }
                
                Section(header: Text("Conntact Method")) {
                    Picker("Contact Method", selection: $preferedContactMethod) {
                        Text("Email:").tag(ContactMethod.email)
                        Text("Phone:").tag(ContactMethod.phone)
                    }
                    .pickerStyle(.segmented)
                    switch preferedContactMethod {
                        case .email:
                        TextField("Email:", text: $email)
                    case .phone:
                        TextField("Phone:", text: $phone)
                    }
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
            }.navigationTitle("Contact Us")
        }
    }
}

#Preview {
    ContentView()
}
