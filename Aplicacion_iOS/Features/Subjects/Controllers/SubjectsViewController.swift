//
//  SubjectsViewController.swift
//  Aplicacion_iOS
//
//  Created by Jorge Caro Poza on 14/5/19.
//  Copyright © 2019 Jorge Caro Poza. All rights reserved.
//

import UIKit

class SubjectViewController: UIViewController{
    private let tam: CGFloat = 16.0
    @IBOutlet weak var mCollectionView: UICollectionView!
    
    override func viewDidLoad(){
        super.viewDidLoad()
    }
}
//MARK: - Navigation -
extension SubjectViewController{
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        guard let selectedCell = sender as? UICollectionViewCell,
            let cellPosition = mCollectionView.indexPath(for: selectedCell),
        let viewController = segue.destination as? SubjectDetailViewController
        else{
                return
        }
        let selectedSubject = defaultSubjects[cellPosition.row]
        viewController.set(data: selectedSubject)
    }
    
}
//MARK: - UICollectionView -
extension SubjectViewController: UICollectionViewDelegate, UICollectionViewDataSource ,UICollectionViewDelegateFlowLayout{
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
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = (collectionView.frame.width / 2) - (tam/2)
        return CGSize(width: size, height: size)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return tam
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return tam
    }
}
