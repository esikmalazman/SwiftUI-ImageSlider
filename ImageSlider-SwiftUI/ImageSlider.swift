//
//  ImageSlider.swift
//  ImageSlider-SwiftUI
//
//  Created by Ikmal Azman on 12/06/2023.
//

import SwiftUI

struct ImageSlider: View {
    
    /// 1. array of string for images name
    private let images = ["1", "2", "3", "4"]
    
    var body: some View {
        /// 2. embed view inside TabView and set it style to page that allow images as in carousel
        TabView {
            ForEach(images, id: \.self) { imageName in
                /// 3. create Image view that allow the view fits it space and scale the view of the parent view
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                
            }
        }
        .tabViewStyle(.page)
    }
}

struct ImageSlider_Previews: PreviewProvider {
    static var previews: some View {
        ImageSlider()
    }
}
