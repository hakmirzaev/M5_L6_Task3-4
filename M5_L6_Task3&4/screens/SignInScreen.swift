//
//  SignInScreen.swift
//  M5_L6_Task3&4
//
//  Created by Bekhruz Hakmirzaev on 26/11/22.
//

import SwiftUI

struct SignInScreen: View {
    @State var isModel = false
    @State var userID = ""
    @State var userPW = ""
    var body: some View {
        NavigationView {
            VStack{
                Spacer()
                Image("personImage").resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
                    .background(Color.white)
                TextField("User ID", text: $userID).frame(height: 45).padding(.leading, 10)
                    .background(Color(.systemGray5))
                    .cornerRadius(30)
                SecureField("User PW", text: $userPW).frame(height: 45).padding(.leading, 10)
                    .background(Color(.systemGray5))
                    .cornerRadius(30)
                Button(action: {
                }, label: {
                    HStack{
                        Spacer()
                        Text("Sign In").foregroundColor(.white)
                        Spacer()
                    }
                }).frame(height: 45)
                    .background(Color.red)
                    .cornerRadius(30)
                Spacer()
                HStack{
                    Text("Don't have an account?").foregroundColor(.blue)
                    NavigationLink(destination: SignUpScreen(), label: {
                        Text("Sign Up")
                    })
                }
            }.padding()
                .navigationBarTitle("Instagram", displayMode: .inline)
        }
    }
}

struct SignInScreen_Previews: PreviewProvider {
    static var previews: some View {
        SignInScreen()
    }
}
