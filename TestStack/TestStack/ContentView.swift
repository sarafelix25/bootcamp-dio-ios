//
//  ContentView.swift
//  TestStack
//
//  Created by Sara Batista dos Santos Felix on 9/23/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            Rectangle().foregroundColor(.purple)
            HStack{
                Rectangle().foregroundColor(.green)
                Rectangle().foregroundColor(.orange)
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
