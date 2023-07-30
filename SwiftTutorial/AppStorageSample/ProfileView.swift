//
//  ProfileView.swift
//  SwiftTutorial
//
//  Created by 0x2ab70001b1 on 2023/7/30.
//

import SwiftUI

struct ProfileView: View {
    
    // Appstorage
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "person.text.rectangle")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
            Text("Your name: \(currentUserName ?? "Your name is here")")
            Text("Your age: \(currentUserAge ?? 0)")
            Text("Your gender: \(currentUserGender ?? "Unknow")")
            
            Text("Sign Out".uppercased())
                .font(.headline)
                .frame(height: 45)
                .foregroundColor(Color.red)
                .frame(maxWidth: .infinity)
                .background(Color.white)
                .cornerRadius(10)
                .onTapGesture {
                    signOut()
                }
        }
        .font(.title)
        .foregroundColor(.white)
        .padding()
        .padding(.vertical, 10)
        .background(
            Color.green
                .cornerRadius(10)
                .shadow(
                    color:Color.black.opacity(0.3),
                    radius: 10,
                    x: 0,
                    y: 10
                )
        )
        .padding(.horizontal, 10)
    }
    
    func signOut() {
        currentUserName = nil
        currentUserAge = nil
        currentUserGender = nil
        withAnimation(.spring()) {
            currentUserSignedIn = false
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
