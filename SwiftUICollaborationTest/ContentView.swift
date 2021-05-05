//
//  ContentView.swift
//  SwiftUICollaborationTest
//
//  Created by Seunghun Yang on 2021/05/05.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            NavigationLink(
                destination: CounterView(),
                label: {
                    Text("Navigate to Counter")
                })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
