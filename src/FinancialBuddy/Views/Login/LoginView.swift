//
//  LoginView.swift
//  FinancialBuddy
//
//  Created by Daniel Ancines on 25/03/25.
//

import SwiftUI

struct LoginView: View {
    @State var userLogin: String = ""
    @State var userPassword: String = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Welcome back!")
                .font(.largeTitle)
                .bold()
            
            Text("Login to continue")
                .foregroundColor(.secondary)
            
            Spacer()
                .frame(height:90)
            
            Text("Account")
                .foregroundColor(.secondary)
            TextField("User", text: $userLogin)
            
            Text("Password")
                .foregroundColor(.secondary)
                .padding(.top, 18)
            
            SecureField("Password", text: $userPassword)
                
            Spacer()
                .frame(height:32)
            
            Button(){
                
            } label: {
                Text("Login")
                    .frame(maxWidth: .infinity)
                    .frame(height: 36)
                    .padding(.vertical, 8)
                    .font(.title3)
                    .background(Color(.normal))
                    .foregroundColor(.white)
                    .cornerRadius(14)
            }
            
            Spacer()
            
            let appVersion = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String
            
            if let appVersion = appVersion{
                Text("v\(appVersion)")
                    .frame(maxWidth: .infinity, alignment: .center)
                    .font(.footnote)
                    .foregroundColor(.secondary)
            }
        }
        .padding(.horizontal, 16)
        .padding(.top, 32)
        .textFieldStyle(RoundedTextFieldStyle())
    }
}

#Preview {
    LoginView()
}

struct User: Codable {
    let title: String
}
