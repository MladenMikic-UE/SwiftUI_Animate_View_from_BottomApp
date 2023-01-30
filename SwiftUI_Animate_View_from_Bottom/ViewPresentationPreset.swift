//
//  ViewPresentationPreset.swift
//  SwiftUI_Animate_View_from_Bottom
//
//  Created by Mladen Mikic on 30.01.2023.
//

import Foundation


public enum ViewPresentationPreset: CaseIterable, Identifiable {
    
    case third
    case half
    case twoThirds
    case custom(percentage: CGFloat)
    
    public var id: String {
        switch self {
        case .third:     return "third"
        case .half:      return "half"
        case .twoThirds: return "twoThirds"
        case .custom(let percentage): return "custom: \(percentage)"
        }
    }
    
    var percentage: CGFloat {
        switch self {
        case .third:     return 0.33
        case .half:      return 0.5
        case .twoThirds: return 0.66
        case .custom(let percentage): return percentage
        }
    }
    
    public static var allCases: [ViewPresentationPreset] { [.third, half, twoThirds, .custom(percentage: 0.15)] }
}
