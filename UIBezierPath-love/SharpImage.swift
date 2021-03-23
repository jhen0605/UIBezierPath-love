//
//  SharpImageView.swift
//  Demo
//
//  Created by 簡吟真 on 2021/3/23.
//
import UIKit
class SharpImage: UIImageView {
override func layoutSubviews() {
//定義要顯示的範圍
super.layoutSubviews()
let path = UIBezierPath()
//bounds自動得知圖案寬高
path.move(to: CGPoint.zero)
path.addLine(to: CGPoint(x: bounds.width, y: bounds.height*0.2))
path.addLine(to: CGPoint(x: bounds.width, y: bounds.height))
path.addLine(to: CGPoint(x: 0, y: bounds.height * 0.8))
path.close()
let shapeLayer = CAShapeLayer()
shapeLayer.path = path.cgPath
layer.mask = shapeLayer
}
}
