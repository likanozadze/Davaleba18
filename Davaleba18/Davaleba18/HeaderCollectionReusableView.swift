//
//  HeaderCollectionReusableView.swift
//  Davaleba18
//
//  Created by Lika Nozadze on 11/3/23.
//

import UIKit

class HeaderCollectionReusableView: UICollectionReusableView {
    static let identifier = "HeaderCollectionReusableView"
    
    
    public func configure() {
        backgroundColor = UIColor(red: 0.1, green: 0.13, blue: 0.2, alpha: 1.0)
        addSubview(itemImageView)
        addSubview(profileButton)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        // label.frame = bounds
        
        
    }
    private let itemImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Logo")
        imageView.frame = CGRect(x: 16, y: 8, width: 48, height: 48)
        return imageView
        
    }()
    
    private let profileButton: UIButton = {
        let button = UIButton()
        button.layer.cornerRadius = 12
        button.setTitle("Profile", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.frame = CGRect(x: 282, y: 12, width: 77, height: 40)
        button.backgroundColor = .orange
        return button
    }()
    
    private func setupUI() {
        
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupUI()
    }
}

