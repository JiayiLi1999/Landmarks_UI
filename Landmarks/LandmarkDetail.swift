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
                Text("Turtle Rock")
                    .font(.title)
                    .padding(.bottom,4)
                HStack {
                    Text("Joshua Tree National Park")
                    Spacer()
                    Text("California")
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
            }
                .padding()
            
            Divider()
            Text("About Turtle Rock")
                .font(.title2)
            Text("Descriptive text goes here.")
            
            Spacer()
        }
        
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail()
    }
}
