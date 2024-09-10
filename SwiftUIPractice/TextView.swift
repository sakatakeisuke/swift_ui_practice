//
//  TextView.swift
//  SwiftUIPractice
//
//  Created by Sakata Keisuke on 2024/09/11.
//

import SwiftUI

struct TextView: View {
    // Font型の自作フォント(わざと冗長に書いてる)
    let myFont = Font(CTFont(CTFontUIFontType.message, size: 20))
    let myText =  Text("123456789") // StringProtocolが引数となる

    var body: some View {
        VStack {
            myText
            // .fontモディファイアの引数はFont
            // Fontは.bold()みたいにスタイリングできる
            // monospacedDigitで等幅数字フォントを返す
                .font(myFont.italic().monospacedDigit())
            // 文字の太さ (Fontのスタイリングより優先される？)
                .fontWeight(.ultraLight)
            // Textもスタイリングできる
            // fontWeightと競合するやつは上に記述したスタイルが優先されてそう (SwiftUIって上から実行じゃなかったっけ？)
                .bold()
            // 下線と取り消し線
                .underline()
                .strikethrough()
            
            // ベースラインをシフトする(?)
            // ↓使用例。縦にズレた文字を1つのViewで表す HStackでずらすのと変わらない気がする
            (myText + myText.baselineOffset(10) + myText.baselineOffset(20))
            // と思ったら、underlineは共通で同じ場所につけれる(それはそう)だから使い分けはある？
                .underline()
            
            myText
            // 文字の間隔を指定
                .tracking(-1)
            
            myText
            // カーニング指定(trackingと何が違う？)
                .kerning(-1)
            
        }
        
        
    }
}

#Preview {
    TextView()
}
