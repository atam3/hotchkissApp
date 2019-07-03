//
//  athleticsMediaViewController.swift
//  Hotchkiss Events
//
//  Created by Alex Tam on 6/15/19.
//  Copyright © 2019 Alex Tam. All rights reserved.
//

import UIKit

class athleticsMediaViewController: UIViewController, UICollectionViewDataSource {

    @IBOutlet weak var teamName: UILabel?
    @IBOutlet weak var collectionView: UICollectionView?
    @IBOutlet weak var collectionViewLayout: UICollectionViewFlowLayout?
    
    var athleticsEvent: athleticsEvent?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView?.dataSource = self
        collectionViewLayout?.itemSize = CGSize(width: 50, height: 50)
        
        
        
        collectionView?.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
       
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return athleticsEvent?.imageNames?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        let imageView = cell.viewWithTag(4) as? UIImageView ?? UIImageView()
        imageView.tag = 4
        cell.contentView.addSubview(imageView)
        let image: UIImage?
        if let imageName = athleticsEvent?.imageNames?[indexPath.item]
        {
            image = imageReader.loadImage(named: imageName)
        }
        else
        {
            image = nil
        }
        imageView.image = image
        return cell
    }

}
