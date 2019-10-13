//
//  ContentView.swift
//  Landmarks
//
//  Created by Regan Laurell on 10/12/19.
//  Copyright © 2019 Regan Laurell. All rights reserved.
//

import SwiftUI

struct LandmarkDetail: View {
    var body: some View {
        VStack {
            MapView()
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -75)
                .padding(.bottom, -75)
            
            VStack(alignment: .leading){
                Text("Puppy of Bilbao")
                    .font(.title)
                    .foregroundColor(.red)
                HStack {
                    Text("Guggenheim Museum")
                        .font(.subheadline)
                    Spacer()
                    Text("Bilabo, Spain")
                        .font(.subheadline)
                }
            }
            .padding()
            Spacer()
        }
    }
}

struct LandmarkDetailPreviews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail()
    }
}
