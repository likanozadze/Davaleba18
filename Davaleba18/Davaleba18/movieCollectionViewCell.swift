//
//  movieCollectionViewCell.swift
//  Davaleba18
//
//  Created by Lika Nozadze on 11/3/23.
//
import UIKit

class movieCollectionViewCell: UICollectionViewCell {
    static let identifier = "CustomCollectionViewCell"
    
    private let myImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.image = UIImage(systemName: "questionmark")
        iv.tintColor = .white
        iv.clipsToBounds = true
        iv.layer.cornerRadius = 8
        return iv
    }()
    
    private let myTitle: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        return label
        
    }()
    
    private let myGenre: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        return label
    }()
    
    private let titleToImageMap: [String: (title: String, genre: String)] = [
        "1": ("The Batman", "Action"),
        "2": ("Uncharted", "Adventure"),
        "3": ("The Exorcism of God", "Horror"),
        "4": ("Turning Red", "Comedy"),
        "5": ("Spider-Man: No Way Home", "Action"),
        "6": ("Morbius", "Action")
    ]
    
    public func configure(with image: UIImage, imageNumber: String) {
        self.myImageView.image = image
        if let titleInfo = titleToImageMap[imageNumber] {
            myTitle.text = titleInfo.title
            myGenre.text = titleInfo.genre
        }
        self.setupUI()
    }
    
    
    private func setupUI() {
        self.addSubview(myImageView)
        self.addSubview(myTitle)
        self.addSubview(myGenre)
        
        myImageView.translatesAutoresizingMaskIntoConstraints = false
        myTitle.translatesAutoresizingMaskIntoConstraints = false
        myGenre.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            myImageView.topAnchor.constraint(equalTo: self.topAnchor),
            
            myImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            myImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            myImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            myTitle.topAnchor.constraint(equalTo: myImageView.bottomAnchor, constant: 4),
            myTitle.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            myTitle.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            myGenre.topAnchor.constraint(equalTo: myTitle.bottomAnchor, constant: 4),
            myGenre.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            myGenre.trailingAnchor.constraint(equalTo: self.trailingAnchor),
        ])
    }
    
    public func configure(label: String) {
        myTitle.text = label
    }
    override func prepareForReuse() {
        super.prepareForReuse()
        self.myImageView.image = nil
        self.myTitle.text = nil
        self.myGenre.text = nil
    }
   
}


