//
//  SignInView.swift
//  iOSAppTemplate
//
//  Created by MAC15 on 24/06/22.
//

import SwiftUI

struct SignInView: View {
    @EnvironmentObject var appState: AppState
    
    @State private var email:String = ""
    @State private var password:String = ""
    
    var body: some View {
        NavigationView{
            ScrollView {
                VStack(spacing:15){
                    Text("Hello Again")
                        .font(.system(size:25,weight: .bold))
                    Text("Welcome back you've missed")
                        .font(.system(size:20))
                        .frame(maxWidth:200)
                    
                    VStack(spacing:25){
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
                            Text("Sign In")
                                .padding()
                                .foregroundColor(.white)
                                .font(.system(size:18,weight:.bold))
                        }
                        .frame(maxWidth: .infinity)
                        .background(.pink)
                        .cornerRadius(8)
                        
                        NavigationLink(destination:SignUpView()){
                            Text("Not a member? Resgister now")
                        }
                            
                    }.padding()
                }
                
            }
        }.accentColor(.purple)
        
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
