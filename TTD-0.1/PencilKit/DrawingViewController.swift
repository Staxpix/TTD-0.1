//
//  DrawingViewController.swift
//  TTD_Test
//
//  Created by Daniel Enning on 15.04.21.
//

import UIKit
import PencilKit

class DrawingViewController: UIViewController {
    
    lazy var canvas: PKCanvasView = {
        let v = PKCanvasView()
        v.drawingPolicy = .anyInput
        v.minimumZoomScale = 1
        v.maximumZoomScale = 5
        v.translatesAutoresizingMaskIntoConstraints = false
        v.contentSize = CGSize(width: 2000, height: 2000)
        
        
        return v
    }()
    
    func saveCanvas() {
        let image = canvas.drawing.image(from: canvas.drawing.bounds, scale: 1)
        UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil)
    }
    
    lazy var toolPicker: PKToolPicker = {
        let toolPicker = PKToolPicker()
        toolPicker.addObserver(self)
        return toolPicker
    }()
    
    var drawingData = Data()
    
    var drawingChanged: (Data) -> Void = {_ in}
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(canvas)

        NSLayoutConstraint.activate([
            canvas.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            canvas.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            canvas.topAnchor.constraint(equalTo: view.topAnchor),
            canvas.bottomAnchor.constraint(equalTo: view.bottomAnchor)  ])

        toolPicker.setVisible(true, forFirstResponder: canvas)
        toolPicker.addObserver(canvas)
        canvas.delegate = self
        canvas.becomeFirstResponder()
        
        if let drawing = try? PKDrawing(data: drawingData) {
            canvas.drawing = drawing
        }
        
        
        
    }
    

  

}

extension DrawingViewController: PKToolPickerObserver, PKCanvasViewDelegate {
    func canvasViewDrawingDidChange(_ canvasView: PKCanvasView) {
        drawingChanged(canvasView.drawing.dataRepresentation())
    }
}
