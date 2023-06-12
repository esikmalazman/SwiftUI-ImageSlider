//
//  ContentView.swift
//  ImageSlider-SwiftUI
//
//  Created by Ikmal Azman on 12/06/2023.
//  Image slider in SwiftUI
//  https://medium.com/@mahdi.mahjoobi/image-slider-in-swiftui-59bac18ae4f4

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            /// 1. create List view and emded the image slider with specified height
            List {
                ImageSlider()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets())
            }
            .listStyle(.plain)
            .navigationBarTitleDisplayMode(.large)
            .navigationBarTitle("Image Slider")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
