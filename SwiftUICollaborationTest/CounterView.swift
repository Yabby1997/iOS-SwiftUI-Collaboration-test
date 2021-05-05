//
//  CounterView.swift
//  SwiftUICollaborationTest
//
//  Created by Seunghun Yang on 2021/05/05.
//

import SwiftUI

struct CounterView: View {
    // MARK: - Properties
    
    @State var count: Int = 0
    
    // MARK: - Lifecycles
    
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Text("\(count)")
                .font(.title)
                .fontWeight(.heavy)
            Button("Count") {
                self.count += 1
            }
        }
    }
}

struct CounterView_Previews: PreviewProvider {
    static var previews: some View {
        CounterView()
    }
}
