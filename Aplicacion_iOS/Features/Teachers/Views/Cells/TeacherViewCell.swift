//
//  TeacherViewCell.swift
//  Aplicacion_iOS
//
//  Created by Jorge Caro Poza on 13/5/19.
//  Copyright © 2019 Jorge Caro Poza. All rights reserved.
//

import Foundation

import UIKit

class TeachersViewCell: UITableViewCell{
    
    static let mIdentifier = String(describing: TeachersViewCell.self)
    static let mHeight: CGFloat = 120.0
    
    @IBOutlet weak var mView: UIView!
    @IBOutlet weak var mImageView: UIImageView!
    @IBOutlet weak var mNameLabel: UILabel!
    @IBOutlet weak var mEmailLabel: UILabel!
    @IBOutlet weak var mTypeLabel: UILabel!
    
    
    override func prepareForReuse() {
        mImageView.image=nil
        mNameLabel.text=nil
        mEmailLabel.text=nil
        mTypeLabel.text=nil
    }
    // MARK: - Public -
    
    func update(data teacher: Teacher?){
        
        update(email: teacher?.email)
        update(name: teacher?.name)
        update(image: teacher?.photo)
        update(type: teacher?.type)
        
        
    }
    
    // MARK: - Private -
    
    private func update(image: String?){
        
        guard let imageData = image else{
            
            return
            
        }
        
        mImageView.image = UIImage(named: imageData)
    }
    
    private func update(name: String?){
        
        mNameLabel.text=name
        
    }
    
    private func update(email: String?){
        
        mEmailLabel.text=email
        
    }
    
    private func update (type: TeacherType?){
        
        mTypeLabel.text = type?.description
        
    }
    
}
