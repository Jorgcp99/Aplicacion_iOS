//
//  SubjectsViewController.swift
//  Aplicacion_iOS
//
//  Created by Jorge Caro Poza on 14/5/19.
//  Copyright © 2019 Jorge Caro Poza. All rights reserved.
//

import UIKit

class SubjectViewController: UIViewController{
    
    @IBOutlet weak var mCollectionView: UICollectionView!
    
    override func viewDidLoad(){
        super.viewDidLoad()
    }
}

extension SubjectViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func configure(collectionView: UICollectionView){
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) ->
        Int{
            return defaultSubjects.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) ->
        UICollectionViewCell{
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SubjectViewCell.mIdentifier, for: indexPath)
            
            (cell as? SubjectViewCell)?.update(data: defaultSubjects[indexPath.row])
            return cell
    }
}
