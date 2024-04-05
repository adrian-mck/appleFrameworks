//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Adrian Mück on 25.01.24.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    
    @State private var isShowingSafarieView = false
    
    var body: some View {
        VStack{
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button{
                isShowingSafarieView = true
            } label: {
                AFButton(title: "Learn More")
            }
            .fullScreenCover(isPresented: $isShowingSafarieView, content: {
                SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
            })
        
    }
}

//#Preview {
//    FrameworkDetailView(framework: MockData.sampleFramework,
//                        isShowingDetailView: .constant(false))
}
