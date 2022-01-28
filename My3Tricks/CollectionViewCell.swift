//
//  CollectionViewCell.swift
//  My3Tricks
//
//  Created by Sebastian Strus on 2022-01-28.
//


import UIKit



class CollectionViewCell: UICollectionViewCell {
    
    // MARK: - All subviews
    fileprivate var imageView: UIImageView = {
        let iv = UIImageView(image: #imageLiteral(resourceName: "apple"))
        iv.contentMode = ContentMode.scaleAspectFit//.scaleToFill//.scaleAspectFill
        iv.clipsToBounds = true
        iv.tintColor = .white
        return iv
    }()
    
    
    // MARK: - Initializers
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .darkGray
        contentView.addSubview(imageView)
        
        imageView.setAnchor(top: contentView.layoutMarginsGuide.topAnchor,
                            leading: contentView.layoutMarginsGuide.leadingAnchor,
                            bottom: contentView.layoutMarginsGuide.bottomAnchor,
                            trailing: contentView.layoutMarginsGuide.trailingAnchor,
                            paddingTop: 10,
                            paddingLeft: 10,
                            paddingBottom: 10,
                            paddingRight: 10,
                            width: 0,
                            height: self.frame.width*1.5)

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func preferredLayoutAttributesFitting(_ layoutAttributes: UICollectionViewLayoutAttributes) -> UICollectionViewLayoutAttributes {
        layoutIfNeeded()
        layoutAttributes.bounds.size.height = contentView.systemLayoutSizeFitting(UIView.layoutFittingCompressedSize).height
        return layoutAttributes
    }
    

    

    
}
