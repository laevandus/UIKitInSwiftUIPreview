//
//  ContentViewController.swift
//  UIKitInSwiftUIPreview
//
//  Created by Toomas Vahter on 31.05.2020.
//  Copyright © 2020 Augmented Code. All rights reserved.
//

import UIKit
import SwiftUI

final class ContentViewController: UIViewController {
    override func loadView() {
        self.view = UIView()
        self.view.backgroundColor = .systemBackground
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let stackView = UIStackView(frame: .zero)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stackView)
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 16)
        ])
        
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        stackView.addArrangedSubview(label)
        
        label.textColor = .systemRed
        label.text = "Red text"
    }
}

// MARK: SwiftUI Preview

#if DEBUG
struct ContentViewControllerContainerView: UIViewControllerRepresentable {
    typealias UIViewControllerType = ContentViewController

    func makeUIViewController(context: Context) -> UIViewControllerType {
        return ContentViewController()
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {}
}

struct ContentViewController_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewControllerContainerView().colorScheme(.light) // or .dark
    }
}
#endif
