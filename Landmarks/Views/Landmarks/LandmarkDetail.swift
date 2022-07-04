//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Jiayi Li on 2022/6/23.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    var offset_y:CGFloat = 130;
    var body: some View {
        ScrollView{
            MapView(coordinate: landmark.locationCoordinates)
                .ignoresSafeArea()
                .frame(height:300)
            CircleImage(image: landmark.image)
                .offset(y:-offset_y)
                .padding(.bottom,-offset_y)
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                    .padding(.bottom,4)
                HStack {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            }
            .padding()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
    
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: ModelData().landmarks[0])
    }
}
