//
//  PaddingSample.swift
//  SwiftTutorial
//
//  Created by 0x2ab70001b1 on 2023/7/6.
//

import SwiftUI

struct PaddingSample: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("从前慢")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            
            Text("记得早先少年时, 大家诚诚恳恳, 说一句是一句, 清早上火车站, 长街黑暗无行人, 卖豆浆的小店冒着热气, 从前的日色变得慢, 车马邮件都慢")
        }
        .padding()
        .padding(.vertical, 10)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(
                    color:Color.black.opacity(0.3),
                    radius: 10,
                    x: 0,
                    y: 10
                )
        )
        .padding(.horizontal, 10)
        
//        Text("我的心在等待，永远在等待，我的心在等待永远在等待")
//                    .font(.largeTitle)
//                    .fontWeight(.semibold)
//                    .background(Color.blue)
//                    .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
    }
}

struct PaddingSample_Previews: PreviewProvider {
    static var previews: some View {
        PaddingSample()
    }
}
