//
//  OnBoardingView.swift
//  SwiftTutorial
//
//  Created by 0x2ab70001b1 on 2023/7/30.
//

import SwiftUI

struct OnBoardingView: View {
    
    // state
    @State var onBoardingState: Int = 0
    
    // input
    @State var name: String = ""
    @State var age: Double = 48.0
    @State var gender: String = ""
    
    // animation
    let transition: AnyTransition = .asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading))
    
    // Appstorage
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    
    // alert
    @State var showAlert: Bool = false
    @State var alertTitle: String = ""
    
    var body: some View {
        ZStack {
            // content
            ZStack {
                switch onBoardingState {
                case 0:
                    welcomeSection
                        .transition(transition)
                case 1:
                    nameSection
                        .transition(transition)
                case 2:
                    ageSection
                        .transition(transition)
                case 3:
                    genderSection
                        .transition(transition)
                default:
                    RoundedRectangle(cornerRadius: 25.0)
                }
            }
            
            // button
            VStack {
                Spacer()
                bottomButton
            }
            .padding(30)
        }
        .alert("alert", isPresented: $showAlert) {
        } message: {
            Text(alertTitle)
        }
    }
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
            .background(Color.green)
    }
}

// MARK: COMPONENTS

extension OnBoardingView {
    private var bottomButton: some View {
        Text((onBoardingState == 0 ? "Sign in" :
                onBoardingState == 3 ? "Finish" : "Next").uppercased())
            .font(.subheadline)
            .fontWeight(.semibold)
            .foregroundColor(Color.green)
            .frame(height: 45)
            .frame(maxWidth: .infinity)
            .background(.white)
            .cornerRadius(10)
            .animation(nil, value: onBoardingState)
            .onTapGesture {
                handlerButtonPress()
            }
    }
    
    private var welcomeSection: some View {
        VStack(spacing: 30) {
            Spacer()
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
            Text("Welcome to SwiftUI tutorial")
                .font(.title)
                .fontWeight(.semibold)
                .overlay(alignment: .bottom) {
                    Capsule(style: .continuous)
                        .frame(height: 3)
                        .foregroundColor(.white)
                        .offset(y: 3)
                }
            Text("This is an example of SwiftUI, combining the previous knowledge points to complete a login example")
                .font(.headline)
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
        .foregroundColor(.white)
        .padding(30)
    }
    
    private var nameSection: some View {
        VStack(spacing: 30) {
            Spacer()
            Text("What's your name?")
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            
            TextField("Input your name ...", text: $name)
                .font(.headline)
                .frame(height: 45)
                .padding(.horizontal)
                .background(Color.white)
                .cornerRadius(10)
            Spacer()
            Spacer()
        }
        .padding(30)
    }
    
    private var ageSection: some View {
        VStack(spacing: 30) {
            Spacer()
            Text("Select your age?")
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            Text(String(format: "%.0f", age))
                .font(.headline)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            Slider(value: $age, in: 18...100, step: 1) {}
            .tint(.white)
            Spacer()
            Spacer()
        }
        .padding(30)
    }
    
    private var genderSection: some View {
        VStack(spacing: 30) {
            Spacer()
            Text("Select your gender?")
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            
            Picker(selection: $gender) {
                Text("male").tag("male")
                Text("female").tag("female")
                Text("unkonw").tag("unknow")
            } label: {
                Text(gender.count > 1 ? gender : "Select a gender")
                    .font(.headline)
                    .foregroundColor(.gray)
                    .frame(height: 45)
                    .frame(maxWidth: .infinity)
                    .background(Color.white)
                    .cornerRadius(10)
            }
            .pickerStyle(.menu)
            .tint(.white)
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
        .foregroundColor(.white)
    }
}

// MARK: FUNCATIONS

extension OnBoardingView {
    func handlerButtonPress() {
        
        switch onBoardingState {
        case 1:
            guard name.count > 3 else {
                showAlert(title: "Title must be grenter than three characters😮‍💨")
                return
            }
        case 3:
            guard gender.count > 0 else {
                showAlert(title: "Please select a gender 👻")
                return
            }
        default: break
        }
        
        if onBoardingState == 3 {
            currentUserName = name
            currentUserAge = Int(age)
            currentUserGender = gender
            withAnimation(.spring()) {
                currentUserSignedIn = true
            }
        } else {
            withAnimation(.spring()) {
                onBoardingState += 1
            }
        }
    }
    
    func showAlert(title: String) {
        alertTitle = title
        showAlert.toggle()
    }
}
