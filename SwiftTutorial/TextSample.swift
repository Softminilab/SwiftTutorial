//
//  ContentView.swift
//  SwiftTutorial
//
//  Created by 0x2ab70001b1 on 2023/6/28.
//

import SwiftUI

struct TextSample: View {

    var body: some View {
        VStack {
            Text("Hi, welcome! This is Text() Components in SwiftUI, try to copy this code, and paste it into you Swiftui file, and you can see the effect".uppercased()) // 显示的文本内容
//                            .font(.title) // 字体
//                            .fontWeight(.semibold) // 字重
//                            .bold() // 粗体
//                            .multilineTextAlignment(.center) // 多行文本的对其方式
//                            .underline() // 下划线：默认黑色
//                            .underline(true, color: Color.green) // 自定义下划线
//                            .italic() // 斜体
//                            .strikethrough() // 删除线：默认黑色
//                            .strikethrough(true, color: Color.orange) // 自定义删除线眼色
//                              .font(.system(size: 24, weight: .semibold, design: .monospaced))
//                            .baselineOffset(100) // 行高
//                            .kerning(10) // 字间距
//                            .multilineTextAlignment(.center)
//                            .foregroundStyle(Color.blue)
//                            .frame(width: 200, height: 100, alignment: .center)
//                            .minimumScaleFactor(0.1)
        }
    }
}

struct TextSample_Previews: PreviewProvider {
    static var previews: some View {
        TextSample()
    }
}
