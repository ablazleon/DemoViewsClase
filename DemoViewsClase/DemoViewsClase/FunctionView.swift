//
//  FunctionView.swift
//  DemoViewsClase
//
//  Created by Adrian on 18/09/2018.
//  Copyright © 2018 Adrián Blázquez León. All rights reserved.
//

import UIKit

protocol FunctionViewDataSource: class { //
    func startIndexFor(_ functionView: FunctionView) -> Double
    func endIndexFor(_ functionView: FunctionView, pointAt index: Double) -> FunctionPoint
    func functionView(_ functionView: FunctionView, pointAt index:Double) -> FunctionPoint
    func pointsOfInterest(_ functionView: FunctionView) ->  [FunctionPoint]
}


@IBDesignable
class FunctionView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    @IBInspectable
    var scale: Double = 4.0
    @IBInspectable
    var lw: Double = 2.0
    @IBInspectable
    var color: UIColor = .red
    
   weak var datasource: FunctionViewDataSource! // no hacer bucles de referecnias

    override func draw(_ rect: CGRect ){
    
        // drawAxis()
        //
        
        let p = UIBezierPath()
        
        
        let i0 = datasource.startIndexFor(self)
        let i1 = datasource.endIndexFor(self)
        
        let p0 = datasource.functionView(self, pointAt: i0)
        
        let x0 = vx2px(p0.x)
        let y0 = vy2py(p0.y)
        
        for i in stride(from: 0.0, to: 100.0, by: (i1-i0)/50) {
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
    private func vx2px (vx: Double) -> CGFloat{
        return CGFloat(scale*vx) + bounds.size.width/2
    }
    
    private func vy2py (vy: Double) -> CGFloat{
    return CGFloat(scale*vy) + bounds.size.width/2
    }
    
    
    
}
