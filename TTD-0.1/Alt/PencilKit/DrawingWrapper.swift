//
//  DrawingWrapper.swift
//  TTD_Test
//
//  Created by Daniel Enning on 15.04.21.
//

import SwiftUI

struct DrawingWrapper: UIViewControllerRepresentable {
    typealias UiViewControllerType = DrawingViewController
    
    var manager: DrawingManager
    var id: UUID
    
    func makeUIViewController(context: Context) -> DrawingViewController {
        let viewController = DrawingViewController()
        viewController.drawingData = manager.getData(for: id)
        viewController.drawingChanged = { data in
            manager.update(data: data, for: id)
        }
        return viewController
    }
    
    func updateUIViewController(_ uiViewController: DrawingViewController, context: Context) {
        uiViewController.drawingData = manager.getData(for: id)
    }
    
}
