//
//  StudentViewCell.swift
//  Aplicacion_iOS
//
//  Created by Jorge Caro Poza on 13/5/19.
//  Copyright © 2019 Jorge Caro Poza. All rights reserved.
//

import Foundation

import UIKit

class StudentViewCell: UITableViewCell{
    
    static let mIdentifier = String(describing: StudentViewCell.self)
    static let mHeight: CGFloat = 120.0
    
    @IBOutlet weak var mView: UIView!
    @IBOutlet weak var mImageView: UIImageView!
    @IBOutlet weak var mNameLabel: UILabel!
    @IBOutlet weak var mEmailLabel: UILabel!
    @IBOutlet weak var mAgeLabel: UILabel!
    
    
    
    
    override func prepareForReuse() {
        mImageView.image = nil
        mNameLabel.text = nil
        mEmailLabel.text = nil
        mAgeLabel.text = nil
    }
    
    // MARK: - Public -
    
    func update(data student: Student?){
        
        update(image: student?.photo)
        update(name: student?.name)
        update(email: student?.email)
        update(age: student?.age)
        
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
    
    private func update (age birthdate: Date?){
        guard let age = birthdate?.toFormattedString(with : "YYYY") else {return}
        //message_birthdate.toLocalized() (MIRAR STRINGEXTENSION)
        mAgeLabel.text = String.init(format: message_birthdate.toLocalized(),age)
        
    }
    
}
