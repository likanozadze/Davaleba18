//
//  MovieDetailViewController.swift
//  Davaleba18
//
//  Created by Lika Nozadze on 11/3/23.
//

import UIKit

class MovieDetailViewController: UIViewController, UINavigationControllerDelegate {
    
    
    var movieDetails: MovieDetails?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        self.view.backgroundColor = UIColor(red: 0.1, green: 0.13, blue: 0.2, alpha: 1)
        
        if let navBar = self.navigationController?.navigationBar {
            let navBarHeight: CGFloat = 64.0
            let navBarFrame = CGRect(x: 0, y: 0, width: view.frame.width, height: navBarHeight)
            navBar.frame = navBarFrame
            
            
            
            //            let chevronLeftButton = UIBarButtonItem(image: UIImage(systemName: "chevron.left"), style: .plain, target: self, action: #selector(chevronLeftButtonTapped))
            //            self.navigationItem.leftBarButtonItem = chevronLeftButton
            
        }
        
        let mainStackView = UIStackView()
        mainStackView.axis = .vertical
        mainStackView.alignment = .fill
        mainStackView.distribution = .fill
        mainStackView.spacing = 12
        mainStackView.backgroundColor = UIColor(red: 0.1, green: 0.13, blue: 0.2, alpha: 1.0)
        
        
        let chevronButton = UIButton(type: .system)
        chevronButton.setImage(UIImage(systemName: "chevron.left"), for: .normal)
        
        let navigationLabel = UILabel()
        navigationLabel.text = "The Batman"
        navigationLabel.textColor = .white
        navigationLabel.font = UIFont.systemFont(ofSize: 18)
        
        let stackView = UIStackView(arrangedSubviews: [chevronButton, navigationLabel])
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.spacing = 50
        
        navigationItem.titleView = stackView
        
        let label1 = UILabel()
        label1.text = "8.3"
        label1.textColor = .white
        label1.font = UIFont.systemFont(ofSize: 20)
        
        let label2 = UILabel()
        label2.text = "IMDB"
        label2.textColor = .white
        label2.font = UIFont.systemFont(ofSize: 14)
        
        let stackView1 = UIStackView(arrangedSubviews: [label1, label2])
        stackView1.axis = .vertical
        stackView1.alignment = .center
        stackView1.spacing = 4
        
        view.addSubview(stackView1)
        
        
        func createLabel(text: String) -> UILabel {
            let label = UILabel()
            label.text = text
            label.textColor = .white
            label.font = UIFont.systemFont(ofSize: 14)
            label.numberOfLines = 0
            return label
        }
        
        let imageView = UIImageView()
        imageView.image = movieDetails?.image
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        
        
        let titleLabel = UILabel()
        titleLabel.text = "\(movieDetails?.description ?? "")"
        titleLabel.textColor = .white
        titleLabel.font = UIFont.systemFont(ofSize: 14)
        titleLabel.numberOfLines = 0
        
        let sessionButton = UIButton()
        sessionButton.setTitle("Select Session", for: .normal)
        sessionButton.setTitleColor(.white, for: .normal)
        sessionButton.backgroundColor = .orange
        sessionButton.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        sessionButton.frame = CGRect(x: 0, y: 0, width: 343, height: 56)
        sessionButton.titleLabel?.textAlignment = .center
        sessionButton.layer.cornerRadius = 8
        view.addSubview(sessionButton)
        sessionButton.center = view.center
        
        
        mainStackView.addArrangedSubview(titleLabel)
        mainStackView.addArrangedSubview(createLabel(text: "Certificate   \(movieDetails?.Certificate ?? "")"))
        mainStackView.addArrangedSubview(createLabel(text: "Runtime   \(movieDetails?.Runtime ?? "")"))
        mainStackView.addArrangedSubview(createLabel(text: "Release   \(movieDetails?.Release ?? 0)"))
        mainStackView.addArrangedSubview(createLabel(text: "Genre   \(movieDetails?.Genre ?? "")"))
        mainStackView.addArrangedSubview(createLabel(text: "Director   \(movieDetails?.Director ?? "")"))
        mainStackView.addArrangedSubview(createLabel(text: "Cast   \(movieDetails?.Cast ?? "")"))
        
        view.addSubview(mainStackView)
        view.addSubview(imageView)
        view.addSubview(stackView)
        
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            
            imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: -52),
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.widthAnchor.constraint(equalToConstant: 375),
            imageView.heightAnchor.constraint(equalToConstant: 210)
            
        ])
        
        
        mainStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            mainStackView.topAnchor.constraint(equalTo: view.centerYAnchor),
            mainStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            mainStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16)
            
        ])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor)
        ])
        
        stackView1.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView1.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            // stackView1.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView1.topAnchor.constraint(equalTo: view.topAnchor, constant: 350)
        ])
        
        
        sessionButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            sessionButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            sessionButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            sessionButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -16),
            sessionButton.heightAnchor.constraint(equalToConstant: 56)
        ])
        
        //    @objc func chevronLeftButtonTapped() {
        //        navigationController?.popViewController(animated: true)
        //
        //    }
        //}
        
        
    }
}
