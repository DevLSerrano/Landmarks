//
//  ContentView.swift
//  MacLandmarks
//
//  Created by Leonardo Serrano on 19/05/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            LandmarkList().frame(minWidth: 700,minHeight: 300)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
