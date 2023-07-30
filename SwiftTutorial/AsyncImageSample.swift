//
//  AsyncImageSample.swift
//  SwiftTutorial
//
//  Created by 0x2ab70001b1 on 2023/7/30.
//

import SwiftUI

struct AsyncImageSample: View {
    let url = URL(string: "https://developer.apple.com/home/images/tile-ipados-17/ipados-17-b-large.png?1")
    var body: some View {
        VStack {
            AsyncImage(url: url) { image in
                image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .cornerRadius(30)
            } placeholder: {
                ProgressView()
            }
            
            AsyncImage(url: url) { phase in
                switch phase {
                case .empty:
                    ProfileView()
                case .success(let image):
                    image
                        .resizable()
                        .scaledToFit()
                        .frame(width: 250, height: 250)
                        .cornerRadius(30)
                case .failure(let error):
                    Image(systemName: "questionmark")
                        .font(.title)
                default:
                    Image(systemName: "questionmark")
                        .font(.title)
                }
            }
        }
    }
}

struct AsyncImageSample_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageSample()
    }
}
