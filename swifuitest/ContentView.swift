//
//  ContentView.swift
//  swifuitest
//
//  Created by EDOUARD CHEVENSLOVE on 05/12/2023.
//

import SwiftUI

struct ContentView: View {
    // Variables @State pour suivre l'état des composants interactifs
    @State private var name = ""
    @State private var isToggleOn = false

    var body: some View {
        NavigationView{
            
            VStack {
                // Texte
                Text("Hello, SwiftUI!")
                    .font(.largeTitle)
                    .foregroundColor(.blue)
                
                // Champ de texte
                TextField("Enter your name", text: $name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                // Bouton
                Button(action: {
                    // Action du bouton
                    print("Button tapped!")
                }) {
                    Text("Tap me!")
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(8)
                }
                
                // Case à cocher
                Toggle("Toggle me", isOn: $isToggleOn)
                    .padding()
                
                // Bouton avec navigation vers une autre vue
                NavigationLink(destination: AnotherView()) {
                    Text("Go to Another View")
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.green)
                        .cornerRadius(8)
                }
                .padding()
            }
            .padding()
            .navigationBarTitle("SwiftUI Basics for Eddy", displayMode: .large)
        }
    }
}

struct AnotherView: View {
    var body: some View {
        VStack {
            Text("Welcome to Another View!")
                .font(.title)
                .foregroundColor(.green)

            Spacer()

            Button(action: {
                // Action du bouton de retour
                // Vous pouvez ajouter ici la logique pour revenir en arrière
            }) {
                Text("Back to Main View")
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(8)
            }
            .padding()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
        }
    }
}

