//
//  ContentView.swift
//  WatchLandmarks Watch App
//
//  Created by Leonardo Serrano on 13/05/23.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var modelData: ModelData
    @State private var showingDetail = false
    
    var body: some View {
        List {
            ForEach(modelData.landmarks) { landmark in
                LandmarkRow(landmark: landmark)
                    .onTapGesture {
                        showingDetail.toggle()
                    }
                    .sheet(isPresented: $showingDetail) {
                        LandmarkDetail(landmark: landmark)
                            .environmentObject(modelData)
                    }
            }
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static let modelData = ModelData()
    static var previews: some View {
        ContentView().environmentObject(modelData)
        
    }
}
