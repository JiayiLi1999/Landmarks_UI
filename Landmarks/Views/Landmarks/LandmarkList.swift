//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Jiayi Li on 2022/6/23.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modeldata:ModelData
    @State private var showFavoritesOnly = true
    var filteredLandmarks:[Landmark]{
        modeldata.landmarks.filter{landmark in
             (!showFavoritesOnly||landmark.isFavorite)
        }
    }
    var body: some View {
        NavigationView {
            List{
                Toggle(isOn: $showFavoritesOnly){
                    Text("Favorites Only!")
                }
                ForEach(filteredLandmarks){ landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .navigationTitle("Landmarks")
        }
       
    }
}


struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone 11"],id: \.self){ deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
        
    }
}
