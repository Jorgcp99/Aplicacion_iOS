//
//  TeachersViewController.swift
//  Aplicacion_iOS
//
//  Created by Jorge Caro Poza on 13/5/19.
//  Copyright © 2019 Jorge Caro Poza. All rights reserved.
//

import Foundation

import UIKit

class TeachersViewController: UIViewController{
    
    @IBOutlet weak var mTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure(tableView: mTableView)
    }
    
    
}
extension TeachersViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return defaultTeachers.count
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return TeachersViewCell.mHeight
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TeachersViewCell.mIdentifier, for: indexPath)
        
        (cell as? TeachersViewCell)?.update(data: defaultTeachers[indexPath.row])
        
        return cell
        
    }
    
    
    
    private func configure(tableView: UITableView){
        tableView.dataSource=self
        tableView.delegate=self
    }
}
