//
//  Project: LaunchScreenView.swift
//  Created by Noah Carpenter
//  🐱 Follow me on YouTube! 🎥
//  https://www.youtube.com/@NoahDoesCoding97
//  Like and Subscribe for coding tutorials and fun! 💻✨
//  Fun Fact: Cats have five toes on their front paws, but only four on their back paws! 🐾
//  Dream Big, Code Bigger

import SwiftUI

// MARK: - LaunchScreenView

/// A view that serves as the launch screen for the app.
/// It displays a loading screen with a star icon and a progress indicator before navigating to the main ContentView.
struct LaunchScreenView: View {
    // MARK: - State Properties
    
    @State private var isActive = false // Determines whether to show the ContentView or the launch screen
    
    // MARK: - Body
    
    var body: some View {
        // Conditional view rendering based on the isActive state
        if isActive {
            // Once isActive is true, navigate to the main ContentView
            ContentView()
        } else {
            // Display the launch screen with gradient background, image, text, and progress indicator
            ZStack {
                // Background Gradient
                LinearGradient(
                    gradient: Gradient(colors: [Color.black, Color.purple]),
                    startPoint: .topTrailing,
                    endPoint: .bottomLeading
                )
                .edgesIgnoringSafeArea(.all) // Extends the gradient to cover the entire screen
                
                // Content of the Launch Screen
                VStack {
                    // Star Icon
                    Image(systemName: "star.fill")
                        .resizable() // Makes the image resizable
                        .scaledToFit() // Scales the image to fit within its frame
                        .frame(width: 100, height: 100) // Sets the size of the image
                        .foregroundStyle(.white) // Sets the color of the image to white
                        .padding() // Adds padding around the image
                    
                    // Loading Text
                    Text("Loading...")
                        .font(.largeTitle) // Sets the font size to large
                        .foregroundStyle(.white) // Sets the text color to white
                    
                    // Progress Indicator
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle(tint: .white)) // Styles the progress view as a white circular indicator
                }
            }
            .onAppear {
                // Executes when the view appears
                DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                    // Delays the execution by 3 seconds
                    withAnimation {
                        // Animates the transition to the ContentView
                        isActive = true
                    }
                }
            }
        }
    }
}

// MARK: - Preview

#Preview {
    LaunchScreenView()
}
