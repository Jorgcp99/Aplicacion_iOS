//
//  SubjectViewCell.swift
//  Aplicacion_iOS
//
//  Created by Jorge Caro Poza on 14/5/19.
//  Copyright © 2019 Jorge Caro Poza. All rights reserved.
//

import UIKit

class SubjectViewCell : UICollectionViewCell{
    
    static let mIdentifier = String(describing : SubjectViewCell.self)
    
    @IBOutlet weak var mView : UIView!
    @IBOutlet weak var mImage : UIImageView!
    @IBOutlet weak var mTitle : UILabel!
    @IBOutlet weak var mView1 : UIView!
    
    
    
    override func prepareForReuse() {
        mImage.image = nil
        mTitle.text = nil
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        mView.layer.cornerRadius = 10
        mView.layer.shadowRadius = 10
        mView.layer.shadowColor = UIColor.gray.cgColor
        mView.layer.shadowOffset = CGSize.zero
        mView.layer.shadowOpacity = 0.4
        mView1.layer.cornerRadius = 10
        mView1.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]
        
    }
    
    func update(data subjects: Subject?){
        update(image: subjects?.photo)
        update(title: subjects?.name)
        
    }
    
    private func update( image: String?){
        
        guard let imageData = image else{
            return
        }
        mImage.image = UIImage(named: imageData)
    }
    
    private func update( title: String?){
        mTitle.text = title
        
    }
}
