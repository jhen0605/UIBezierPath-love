//
//  SharpImageView.swift
//  UIBezierPath-love
//
//  Created by 簡吟真 on 2021/3/23.
//

import UIKit
class SharpImageView: UIImageView {
override func layoutSubviews() {
        super.layoutSubviews()
        let path = UIBezierPath()
    path.move(to: CGPoint(x: bounds.width/2, y: bounds.height/3))
    path.addCurve(to: CGPoint(x: bounds.width/2, y: bounds.height/1), controlPoint1: CGPoint(x: bounds.width, y: 0), controlPoint2: CGPoint(x: bounds.width, y: bounds.height/3))
    path.addCurve(to: CGPoint(x: bounds.width/2, y: bounds.height/3), controlPoint1: CGPoint(x: 0, y: bounds.height/3), controlPoint2: CGPoint(x: 0, y: 0))
        path.close()
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = path.cgPath
        layer.mask = shapeLayer
    }
}
