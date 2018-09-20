//
//  FunctionView.swift
//  DemoViewsClase
//
//  Created by Adrian on 18/09/2018.
//  Copyright © 2018 Adrián Blázquez León. All rights reserved.
//

import UIKit

class FunctionView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

    override func draw(_ rect: CGRect ){
    
        @IBInspectable
        var scale: Double = 4.0
        @IBInspectable
        var lw: Double = 2.0
        @IBInspectable
        var clor: UIColor = .red
        
        let p = UIBezierPath()
        
        
        let i = 0.0
        let x0 = 100*sin(0.02*i) + 100
        let y0 = 100*cos(0.01*i) + 100
        
        for i in stride(from: 0.0, to: 100.0, by: 0.5) {
            let x = i
            let y = 100*cos(i)
            p.addLine(to: CGPoint(x: x, y: y))
            
        }
        // p.move(to: CGPoint (x: x0, y: y0))
        
        // p.addLine(to: CGPoint(x:50, y:50))
       // p.lineWidth = 8
        //UIColor.green.setStroke()
        
        p.lineWidth = CGFloat(lw)
        UIColor.color.setStroke()
        p.stroke()

    }
        //
    private func vx2px (vx: Double) - CGFloat{
        return CGFloat(scale*vx) + bounds.size.width/2
    }
    
    private func vy2py (vy: Double) - CGFloat{
    return CGFloat(scale*vy) + bounds.size.width/2
    }
    
    
    
}
