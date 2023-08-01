//
//  FocusStateSample.swift
//  SwiftTutorial
//
//  Created by 0x2ab70001b1 on 2023/7/31.
//

import SwiftUI
import UIKit

struct FocusStateSample: View {
    
    let textFieldBackgroundColor = #colorLiteral(red: 0.9496834874, green: 0.9635508657, blue: 1, alpha: 1)
    
    // State
    @State private var name: String = ""
    @State private var password: String = ""
    @State private var againPassword: String = ""
    @State private var email: String = ""
    
    private enum OnboardingField: Hashable {
        case name
        case password
        case againPassword
        case email
    }
    
    //    @FocusState var nameFocused: Bool
    //    @FocusState var passwordFocused: Bool
    //    @FocusState var againPasswordFocused: Bool
    //    @FocusState var emailFocused: Bool
    
    // Storage
    @AppStorage("name") var currentName: String?
    @AppStorage("pwd") var currentPassword: String?
    @AppStorage("againpwd") var currentAgainPassword: String?
    @AppStorage("email") var currentEmail: String?
    
    @FocusState private var fieldInFocus: OnboardingField?
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    markTextField("Input your name", bindingName: $name, submitLabel: .next, keyboardTypeL: .default, focusField: .name)
                    markTextField("Input your password", bindingName: $password, submitLabel: .next, keyboardTypeL: .default, focusField: .password)
                    markTextField("Input your password again", bindingName: $againPassword, submitLabel: .next, keyboardTypeL: .default, focusField: .againPassword)
                    markTextField("Input your email", bindingName: $email, submitLabel: .done, keyboardTypeL: .emailAddress, focusField: .email)
                    Button {
                        save()
                    } label: {
                        Text("Save".uppercased())
                            .foregroundColor(.white)
                            .font(.headline)
                            .fontWeight(.semibold)
                            .frame(height: 55)
                            .frame(maxWidth: .infinity)
                            .background(Color.blue.cornerRadius(10))
                    }
                    Spacer()
                }
            }
            .padding()
            .navigationTitle("Focus state")
            .onTapGesture {
                dismissKeyboard()
            }
            .onAppear {
                autoFillContent()
                guard name.count == 0 else { return }
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: {
                    fieldInFocus = .name
                })
            }
        }
    }
    
    private func markTextField(
        _ prompt: String,
        bindingName: Binding<String>,
        submitLabel: SubmitLabel,
        keyboardTypeL: UIKeyboardType,
        focusField: OnboardingField
    ) -> some View {
        TextField(prompt, text: bindingName)
            .font(.headline)
            .frame(height: 55)
        //            .focused(focusState)
            .focused($fieldInFocus, equals: focusField)
            .submitLabel(submitLabel)
            .keyboardType(keyboardTypeL)
            .padding(.horizontal)
            .background(Color(uiColor: textFieldBackgroundColor))
            .cornerRadius(10)
            .onSubmit {
                submit()
            }
    }
    
    //    private func markTextField(
    //        _ prompt: String,
    //        bindingName: Binding<String>,
    //        submitLabel: SubmitLabel,
    //        keyboardTypeL: UIKeyboardType,
    //        focusState: FocusState<Bool>.Binding
    //    ) -> some View {
    //        TextField(prompt, text: bindingName)
    //            .font(.headline)
    //            .frame(height: 55)
    //            .focused(focusState)
    //            .submitLabel(submitLabel)
    //            .keyboardType(keyboardTypeL)
    //            .padding(.horizontal)
    //            .background(Color(uiColor: textFieldBackgroundColor))
    //            .cornerRadius(10)
    //            .onSubmit {
    //                submit()
    //            }
    //    }
    
    // Hide keyboard, When you tap blank space
    func dismissKeyboard(){
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
    // MARK: FUNCTIONS
    
    private func submit() {
        if fieldInFocus == .name {
            fieldInFocus = .password
        } else if fieldInFocus == .password {
            fieldInFocus = .againPassword
        } else if fieldInFocus == .againPassword {
            fieldInFocus = .email
        } else {
            print("Done")
        }
    }
    
    //    private func submit() {
    //        if nameFocused {
    //            nameFocused = false
    //            passwordFocused = true
    //        } else if passwordFocused {
    //            passwordFocused = false
    //            againPasswordFocused = true
    //        } else if againPasswordFocused {
    //            againPasswordFocused = false
    //            emailFocused = true
    //        } else {
    //            print("Done")
    //        }
    //    }
    
    private func save() {
        currentName = name
        currentPassword = password
        currentAgainPassword = againPassword
        currentEmail = email
        
        print("Saved")
    }
    
    private func autoFillContent() {
        name = currentName ?? ""
        password = currentPassword ?? ""
        againPassword = currentAgainPassword ?? ""
        email = currentEmail ?? ""
    }
}

struct FocusStateSample_Previews: PreviewProvider {
    static var previews: some View {
        FocusStateSample()
    }
}
