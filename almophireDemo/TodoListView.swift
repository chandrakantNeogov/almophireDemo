//
//  ContentView.swift
//  almophireDemo
//
//  Created by Chandrakant  Kondke on 17/05/24.
//

import SwiftUI
import Firebase

struct TodoListView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world! again")
                .onAppear{
                    let currentTime = Date()
                    Analytics.logEvent("app_open", parameters: [
                        "current_time": "\(currentTime)"
                    ])            
                }
        }
        .padding()
    }
}

#Preview {
    TodoListView()
}
