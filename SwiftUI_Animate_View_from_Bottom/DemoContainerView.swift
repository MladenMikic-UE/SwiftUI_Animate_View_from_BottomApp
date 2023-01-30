//
//  DemoContainerView.swift
//  SwiftUI_Animate_View_from_Bottom
//
//  Created by Mladen Mikic on 30.01.2023.
//

import SwiftUI

struct DemoContainerView: View {
    var body: some View {
        VStack {
            
            Spacer()
            
            Text("Testing...")
                //.frame(maxWidth: .infinity)
            Text("Testing 1...")
                //.frame(maxWidth: .infinity)
            Text("Testing 2...")
                //.frame(maxWidth: .infinity)
            
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .background(Color.red)
    }
}

struct DemoContainerView_Previews: PreviewProvider {
    static var previews: some View {
        DemoContainerView()
    }
}
