//
//  SubjectDetailViewController.swift
//  Aplicacion_iOS
//
//  Created by Jorge Caro Poza on 16/5/19.
//  Copyright © 2019 Jorge Caro Poza. All rights reserved.
//

import UIKit

class SubjectDetailViewController: UIViewController{
    
    private var mData: Subject? = nil
    
    override func viewDidLoad(){
        super.viewDidLoad()
    }
    
    func set(data subject: Subject){
        mData = subject
    }
}
