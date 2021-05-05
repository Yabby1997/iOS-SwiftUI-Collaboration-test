//
//  ContentView.swift
//  SwiftUICollaborationTest
//
//  Created by Seunghun Yang on 2021/05/05.
//

import SwiftUI

extension Color {
    mutating func nextTrafficLight() {
        switch(self) {
        case .green:
            self = .yellow
        case .yellow:
            self = .red
        case . red:
            self = .green
        default:
            self = .green
        }
    }
}

struct ContentView: View {
    // MARK: - Properties
    
    @State var trafficLight: Color = .green
    
    // MARK: - Lifecycles
    
    var body: some View {
        NavigationView {
            ZStack {
                self.trafficLight
                    .edgesIgnoringSafeArea(.all)
                VStack(alignment: .center, spacing: 8){
                    Button("Traffic Light") {
                        self.trafficLight.nextTrafficLight()
                    }
                    NavigationLink(
                        destination: CounterView(),
                        label: {
                            Text("Navigate to Counter")
                        })
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
