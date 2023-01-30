//
//  SwiftUI_Animate_View_from_BottomApp.swift
//  SwiftUI_Animate_View_from_Bottom
//
//  Created by Mladen Mikić on 24.10.2022.
//

import SwiftUI

@main
struct SwiftUI_Animate_View_from_BottomApp: App {
    var body: some Scene {
        WindowGroup {
            VerticalSplitContainerView {
                HStack(spacing: 0) {
                    
                    Spacer().frame(width: 30)
                    
                    Image(systemName: "sun.haze.fill")
                        .resizable()
                        .frame(maxWidth: UIScreen.main.bounds.width)
                        .aspectRatio(1.0, contentMode: .fit)
                    
                    Spacer().frame(width: 30)
                }
            } bottomContent: {
                DemoContainerView()
            }
            
        }
    }
}
