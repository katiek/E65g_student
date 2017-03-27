//
//  GridView.swift
//  Assignment3
//
//  Created by katharinekorngold on 3/27/17.
//  Copyright © 2017 Harvard Division of Continuing Education. All rights reserved.
//

import UIKit

@IBDesignable class GridView: UIView {
    
    @IBInspectable var size: Int = 20{
        didSet{
            self.grid = Grid(self.size,self.size)
        }
    }
        
    @IBInspectable var livingColor =  UIColor(red:0.24, green:0.68, blue:0.31, alpha:1.0)
    var emptyColor = UIColor(red:0.33, green:0.35, blue:0.34, alpha:1.0)
    var bornColor = UIColor(red:0.24, green:0.68, blue:0.31, alpha:0.6)
    var diedColor = UIColor(red:0.33, green:0.35, blue:0.34, alpha:0.6)
    var gridColor = UIColor.black
    
    var gridWidth : CGFloat = 2
    var grid = Grid(0,0){
        didSet{
            self.setNeedsDisplay()
        }
    }

       override func draw(_ rect: CGRect) {
            let size = CGSize(
                width: rect.size.width / 20,
                height: rect.size.height / 20
        )
        
        let base = rect.origin
        (0 ..< 20).forEach { i in
            (0 ..< 20).forEach { j in
                let origin = CGPoint(
                    x: base.x + (CGFloat(j) * size.width),
                    y: base.y + (CGFloat(i) * size.height)
                )
                let subRect = CGRect(
                origin: origin,
                size: size
                )
                var grid = [[Bool]](repeating: [Bool](repeating:false, count: 20), count: 20)
                if grid[i][j] {
                    let path = UIBezierPath(ovalIn: subRect)
                    gridColor.setFill()
                    path.fill()
                }
            }
        }
        
        (0 ..< 21) .forEach {
    drawLine(
        start: CGPoint(x: CGFloat($0)/20 * rect.size.width, y: 0.0),
        end: CGPoint(x: CGFloat($0)/20 * rect.size.width, y: rect.size.height)
    )
        
        drawLine(
            start: CGPoint(x: 0.0, y: CGFloat($0)/20 * rect.size.height),
            end: CGPoint(x: rect.size.width, y: CGFloat($0)/20 * rect.size.height)
        )
    }
    }
    func drawLine(start:CGPoint, end: CGPoint){
        let path = UIBezierPath()
        path.lineWidth = 2.0
        path.move(to: start)
        path.addLine(to: end)
        UIColor.black.setStroke()
        path.stroke()
    }
}
