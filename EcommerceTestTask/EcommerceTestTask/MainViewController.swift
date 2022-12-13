//
//  ViewController.swift
//  EcommerceTestTask
//
//  Created by Андрей  on 08.12.2022.
//

import UIKit

class MainViewController: UIViewController {
 
    @IBOutlet weak var categoryCollectionView: UICollectionView!
    
    @IBOutlet weak var hotSalesCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoryCollectionView.delegate = self
        categoryCollectionView.dataSource = self
        hotSalesCollectionView.dataSource = self
        hotSalesCollectionView.delegate = self
    }


}

extension MainViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var cell = UICollectionViewCell()
        switch collectionView {
        case categoryCollectionView:
            cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CategoryCollectionViewCell
            cell.backgroundColor = collectionView.backgroundColor
        case hotSalesCollectionView:
            cell = collectionView.dequeueReusableCell(withReuseIdentifier: "hotSales", for: indexPath) as! HotSalesCollectionViewCell
            cell.backgroundColor = .black
        default:
            print("Problem")
        }
        
        return cell
    }
    
    
}

