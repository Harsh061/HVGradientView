//
//  HVGradientView.swift
//  HVGradientView
//
//  Created by Harshit Parikh on 17/08/18.
//  Copyright © 2018 Harshit Parikh. All rights reserved.
//

import Foundation

public class HVGradientView: UIView {
    
    // MARK: - Properties
    public enum GradientDirection {
        case horizontal
        case vertical
        case diagonal
    }
    
    public var topColor: UIColor = .white {
        didSet {
            updateGradientColors()
        }
    }
    
    public var bottomColor: UIColor = .black {
        didSet {
            updateGradientColors()
        }
    }
    
    /// The corner radius of the view.
    /// If no value is provided, the default is 20% of the view's width.
    public var cornerRadius: CGFloat = 0 {
        didSet {
            layoutSubviews()
        }
    }
    
    public var gradientDirection: GradientDirection = .horizontal {
        didSet {
            switch gradientDirection {
            case .horizontal:
                updateHorizontalCoords()
            case .vertical:
                updateVerticalCoords()
            case .diagonal:
                updateDiagonalCoords()
            }
        }
    }
    
    private lazy var gradientLayer: CAGradientLayer = {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor]
        return gradientLayer
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        sharedInit()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        sharedInit()
    }
    
    private func sharedInit() {
        layer.addSublayer(gradientLayer)
    }
    
    override public func layoutSubviews() {
        super.layoutSubviews()
        gradientLayer.frame = bounds
        let maskLayer = CAShapeLayer()
        maskLayer.path = UIBezierPath(roundedRect: bounds, cornerRadius: cornerRadius).cgPath
        layer.mask = maskLayer
    }
    
    private func updateGradientColors() {
        gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor]
    }
    
    private func updateHorizontalCoords() {
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 0)
    }
    
    private func updateDiagonalCoords() {
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
    }
    
    private func updateVerticalCoords() {
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 0, y: 1)
    }
    
}
