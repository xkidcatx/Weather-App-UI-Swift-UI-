//
//  Blur.swift
//  Weather SUI
//
//  Created by Eugene Kotovich on 19.10.2022.
//

import SwiftUI

class UIBackdrobView: UIView {
    override class var layerClass: AnyClass {
        NSClassFromString("CABackdropLayer") ?? CALayer.self
    }
}

struct Backdrop: UIViewRepresentable {
    func makeUIView(context: Context) -> UIBackdrobView {
        UIBackdrobView()
    }
    
    func updateUIView(_ uiView: UIBackdrobView, context: Context) {
        
    }
}

struct Blur: View {
    var radius: CGFloat = 3
    var opaque: Bool = false
    var body: some View {
        Backdrop()
            .blur(radius: radius, opaque: opaque)
    }
}

struct Blur_Previews: PreviewProvider {
    static var previews: some View {
        Blur()
    }
}
