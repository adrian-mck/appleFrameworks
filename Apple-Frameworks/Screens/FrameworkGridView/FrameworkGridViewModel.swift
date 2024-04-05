//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Adrian Mück on 25.01.24.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject{
    

    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible()),
    ]
}
