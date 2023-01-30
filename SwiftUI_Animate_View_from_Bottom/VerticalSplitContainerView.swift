//
//  ContentView.swift
//  SwiftUI_Animate_View_from_Bottom
//
//  Created by Mladen Mikić on 24.10.2022.
//

import SwiftUI


public struct VerticalSplitContainerView<TopContent: View, BottomContent: View>: View {
    
    @State private var isSplit = false
    @State private var presentationPreset: ViewPresentationPreset = .half
    
    private let topContent: TopContent
    private let bottomContent: BottomContent
    private var height: CGFloat { UIScreen.main.bounds.height * self.presentationPreset.percentage }
    
    /// The split ration is defined by the `presentationPreset`.
    /// `default` value: `.half`.
    public init(topContent: () -> TopContent,
                bottomContent: () -> BottomContent,
                presentationPreset: ViewPresentationPreset = .half)
    {
        self.topContent = topContent()
        self.bottomContent =  bottomContent()
        self.presentationPreset = presentationPreset
    }
    
    public var body: some View {
        VStack {
            
            HStack(spacing: 10) {
                
                ForEach(ViewPresentationPreset.allCases) { presentationPresetCase in
                    Button(action: {
                        withAnimation {
                            self.presentationPreset = presentationPresetCase
                            self.isSplit.toggle()
                        }
                    }, label: {
                        Text(presentationPresetCase.id)
                            .font(.system(size: 18, weight: .bold))
                            .foregroundColor(.black)
                    })
                    .padding(8)
                    .background(RoundedRectangle(cornerRadius: 20).fill(Color.red))
                }
                
            }
            
            Spacer().frame(height: 30)
            
            self.topContent
               
            Spacer()
            
            self.bottomContent
            .frame(height: isSplit ? height : 0)
            .offset(y : isSplit ? 0 : UIScreen.main.bounds.height)
            .animation(.default)
        }
        .edgesIgnoringSafeArea(.bottom)
    }
    
}

