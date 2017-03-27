//
//  GridView.swift
//  Assignment3
//
//  Created by katharinekorngold on 3/27/17.
//  Copyright © 2017 Harvard Division of Continuing Education. All rights reserved.
//

import UIKit

@IBDesignable class GridView: UIView {
    
    @IBInspectable var grid = Grid(0,0)
    
    @IBInspectable var size: Int = 20{
        didSet{
            self.grid = Grid(self.size,self.size)
        }
    }
        
    @IBInspectable var livingColor : UIColor = .green
    @IBInspectable var emptyColor : UIColor = .darkGray
    @IBInspectable var bornColor : UIColor = .cyan
    @IBInspectable var diedColor : UIColor = .lightGray
    @IBInspectable var gridColor : UIColor = .black
    
    @IBInspectable var gridWidth : CGFloat = 0
 
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
