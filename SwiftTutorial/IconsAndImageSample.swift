//
//  IconsSample.swift
//  SwiftTutorial
//
//  Created by 0x2ab70001b1 on 2023/7/2.
//

import SwiftUI

struct IconsAndImageSample: View {
    var body: some View {
        Image("steve_jobs")
            .resizable()
            .scaledToFit()
            .frame(width: 300, height: 300)
            .clipShape(RoundedRectangle(cornerRadius: 25.0))
        
        //        VStack {
        //            Image(systemName: "lamp.table.fill")
        //                .renderingMode(.original)
        //                .resizable()
        //                .aspectRatio(0.75, contentMode: .fit)
        ////                .foregroundColor(Color.orange)
        //                .frame(width: 200, height: 200)
        //
        //            Image(systemName: "lamp.table.fill")
        //                .renderingMode(.template)
        //                .resizable()
        //                .aspectRatio(0.75, contentMode: .fit)
        //                .foregroundColor(Color.orange)
        //                .frame(width: 200, height: 200)
        //        }
        
        
        //        VStack {
        //            Image(systemName: "heart.fill")
        //                .resizable()
        //                .aspectRatio(contentMode: .fit)
        //                .frame(width: 100, height: 100)
        
        //            Divider()
        
        //            Image(systemName: "heart.fill")
        //                .resizable()
        //                .aspectRatio(contentMode: .fill)
        //                .frame(width: 100, height: 50)
        //                .clipped()
        //        }
        
    }
}

struct IconsAndImageSample_Previews: PreviewProvider {
    static var previews: some View {
        IconsAndImageSample()
    }
}
