//
//  ViewController.swift
//  My3Tricks
//
//  Created by Sebastian Strus on 2022-01-25.
//

import UIKit

class ViewController: UIViewController {
    
    let layoutGuide = UILayoutGuide()
    
    private lazy var imageView: UIImageView = {
        let iv = UIImageView(image: #imageLiteral(resourceName: "apple"))
        iv.tintColor = .white
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.contentMode = .scaleAspectFit

        return iv
    }()
    
    private lazy var label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "My 3 tricks"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 24)
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    
    
    private func setupViews() {
        view.addLayoutGuide(layoutGuide)
        view.addSubview(imageView)
        view.addSubview(label)
        
        NSLayoutConstraint.activate([
            layoutGuide.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            layoutGuide.topAnchor.constraint(equalTo: view.topAnchor),
            layoutGuide.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            layoutGuide.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5),
            
            imageView.centerXAnchor.constraint(equalTo: layoutGuide.centerXAnchor),
            imageView.centerYAnchor.constraint(equalTo: layoutGuide.centerYAnchor),
            imageView.heightAnchor.constraint(equalTo: layoutGuide.heightAnchor, multiplier: 0.68),
            imageView.widthAnchor.constraint(equalTo: imageView.heightAnchor),
            
            label.topAnchor.constraint(equalTo: imageView.bottomAnchor),
            label.centerXAnchor.constraint(equalTo: imageView.centerXAnchor),
        ])
        
    }
    

    

    @IBAction func goToNaxtController(_ sender: Any) {
        let vc = CollectionViewController.init(collectionViewLayout: UICollectionViewFlowLayout.init())
        vc.modalPresentationStyle = .fullScreen //or .overFullScreen for transparency
        self.present(vc, animated: true, completion: nil)

    }
}

