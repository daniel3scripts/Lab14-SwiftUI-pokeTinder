//
//  SignUpView.swift
//  iOSAppTemplate
//
//  Created by MAC15 on 25/06/22.
//

import SwiftUI

struct SignUpView: View {
    @State private var name:String = ""
    @State private var email:String = ""
    @State private var password:String = ""
    var body: some View {
        ScrollView{
            VStack(alignment: .leading, spacing: 20){
                Text("Sign-Up")
                    .font(.system(size: 25,weight: .black))
                Text("Welcome to PokeTinder match with your favorite pokemon")
            }
            .frame(maxWidth: .infinity,alignment: .leading)
            .padding()
            
            Spacer()
            VStack(spacing:25){
                TextField("Enter your Name",text: $email)
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius:8)
                        .stroke(.pink,lineWidth: 1))
                    .keyboardType(.emailAddress)
                TextField("Enter your Email",text: $email)
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius:8)
                        .stroke(.pink,lineWidth: 1))
                    .keyboardType(.emailAddress)
                
                SecureField("Enter your Password",text: $password)
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius:8)
                        .stroke(.pink,lineWidth: 1))
                
                Button{
                    print("Login")
                }label:{
                    Text("Sign Up")
                        .padding()
                        .foregroundColor(.white)
                        .font(.system(size:18,weight:.bold))
                }
                .frame(maxWidth: .infinity)
                .background(.pink)
                .cornerRadius(8)
                
                
                    
            }.padding()
            
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
