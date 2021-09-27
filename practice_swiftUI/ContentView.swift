//
//  ContentView.swift
//  practice_swiftUI
//
//  Created by HyokJun Won on 2021/09/27.
//

import SwiftUI

struct User: Identifiable {
    var id = "Taylor Swift"
}

struct ContentView: View {
    @State private var selectedUser: User? = nil
    @State private var isShowingAlert = false
    
    var body: some View {
        Text("Hello, World!")
            .onTapGesture {
                self.selectedUser = User()
                self.isShowingAlert = true
            }
            .alert(isPresented: $isShowingAlert) {
                Alert(title: Text(selectedUser!.id))
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
