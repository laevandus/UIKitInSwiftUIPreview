//
//  BackgroundView.swift
//  UIKitInSwiftUIPreview
//
//  Created by Toomas Vahter on 31.05.2020.
//  Copyright © 2020 Augmented Code. All rights reserved.
//

import SwiftUI
import UIKit

final class BackgroundView: UIView {
    override init(frame: CGRect) {
        super.init(frame: .zero)
        backgroundColor = .systemBackground
        layer.cornerRadius = 32
        layer.borderColor = UIColor.systemBlue.cgColor
        layer.borderWidth = 14
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: SwiftUI Preview

#if DEBUG
struct BackgroundViewContainer: UIViewRepresentable {
    typealias UIViewType = BackgroundView
    
    func makeUIView(context: Context) -> UIViewType {
        return BackgroundView(frame: .zero)
    }

    func updateUIView(_ uiView: BackgroundView, context: Context) {}
}

struct BackgroundViewContainer_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            BackgroundViewContainer().colorScheme(.light)
            BackgroundViewContainer().colorScheme(.dark)
        }.previewLayout(.fixed(width: 200, height: 200))
    }
}
#endif
