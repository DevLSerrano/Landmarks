//
//  LandmarkDetail.swift
//  WatchLandmarks Watch App
//
//  Created by Leonardo Serrano on 13/05/23.
//

import SwiftUI

struct LandmarkDetail: View {
    @EnvironmentObject var modelData: ModelData
    @Environment(\.presentationMode) var presentationMode
    var landmark: Landmark
    
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }
    
    var body: some View {
        ScrollView {
            VStack {
                CircleImage(image: landmark.image.resizable())
                    .scaledToFit()
                
                Text(landmark.name)
                    .font(.headline)
                    .lineLimit(0)
                
                Toggle(isOn: $modelData.landmarks[landmarkIndex].isFavorite) {
                    Text("Favorite")
                }
                
                Divider()
                
                Text(landmark.park)
                    .font(.caption)
                    .bold()
                    .lineLimit(0)
                
                Text(landmark.state)
                    .font(.caption)
                
                Divider()
                
                MapView(coordinate: landmark.locationCoordinates)
                    .scaledToFit()
                Divider()
                
                Button(action: {
                                    presentationMode.wrappedValue.dismiss()
                                }) {
                                    Text("Back")
                                        .foregroundColor(.white)
                                }
                        
            }
            .padding(16)
             
            
        }
    }
}
struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        let modelData = ModelData()
        return Group {
            LandmarkDetail(landmark: modelData.landmarks[0])
                .environmentObject(modelData)
                .previewDevice("Apple Watch Series 5 - 44mm")
            
            LandmarkDetail(landmark: modelData.landmarks[1])
                .environmentObject(modelData)
                .previewDevice("Apple Watch Series 5 - 40mm")
        }
    }
}
