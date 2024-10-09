//
//  DetailView.swift
//  ToDoList
//
//  Created by Varun Singh on 10/8/24.
//

import SwiftUI

struct DetailView: View {
    var passedValue: String //Don't initialize. Value will be passed from parent View
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack {
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            Text("You Swifty Legend. You passed the value: \(passedValue)")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            
            Spacer()
            
            
            Button {
                dismiss()
            } label: {
                Text("Get Back!")
            }
            .buttonStyle(.borderedProminent)

        }
        .padding()
    }
}

#Preview {
    DetailView(passedValue: "Item 1")
}
