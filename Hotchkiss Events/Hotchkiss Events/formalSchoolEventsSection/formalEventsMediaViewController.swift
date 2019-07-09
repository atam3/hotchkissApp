//
//  formalEventsMediaViewController.swift
//  Hotchkiss Events
//
//  Created by Alex Tam on 7/5/19.
//  Copyright © 2019 Alex Tam. All rights reserved.
//

import UIKit

class formalEventsMediaViewController: UIViewController, UICollectionViewDataSource {
    
    @IBOutlet weak var eventName: UILabel?
    @IBOutlet weak var collectionView: UICollectionView?
    @IBOutlet weak var collectionViewLayout: UICollectionViewFlowLayout?
    
    var formalSchoolEvent: formalSchoolEvent?

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView?.dataSource = self
        collectionViewLayout?.itemSize = CGSize(width: 100, height: 70)
        
        collectionView?.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return formalSchoolEvent?.imageNames?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        let imageView = cell.viewWithTag(4) as? UIImageView ?? UIImageView()
        imageView.tag = 4
        cell.contentView.addSubview(imageView)
        imageView.frame = cell.contentView.bounds
        let image: UIImage?
        if let imageName = formalSchoolEvent?.imageNames?[indexPath.item]
        {
            image = imageReader.loadImage(named: imageName)
        }
        else
        {
            image = nil
        }
        imageView.image = image
        
        let r = UITapGestureRecognizer(target: self, action: #selector(imageTap))
        imageView.addGestureRecognizer(r)
        imageView.isUserInteractionEnabled = true
        
        return cell
    }
    
    @objc func imageTap(r: UITapGestureRecognizer) //i get that r is the gesture recogniser, but why do we have to reinitialise?
    {
        if let imageView = r.view as? UIImageView, let imageViewSuperView = imageView.superview
        {
            let fadeView = UIView(frame: self.view.bounds)
            self.view.addSubview(fadeView)
            fadeView.backgroundColor = .black
            fadeView.alpha = 0
            let enlargeImage = UIImageView(image: imageView.image)
            enlargeImage.contentMode = .scaleAspectFit
            
            let r = UITapGestureRecognizer(target: self, action: #selector(imageClose))
            fadeView.addGestureRecognizer(r)
            fadeView.isUserInteractionEnabled = true
            
            
            fadeView.addSubview(enlargeImage)
            enlargeImage.frame = imageViewSuperView.convert(imageView.frame, to: fadeView)
            UIView.animate(withDuration: 0.3, animations: {
                enlargeImage.frame = self.view.bounds
                fadeView.alpha = 1
            }) { (_) in
                
            }
        }
    }
    
    @objc func imageClose(r: UITapGestureRecognizer)
    {
        if let fadeView = r.view
        {
            UIView.animate(withDuration: 0.5, animations: {
                fadeView.alpha = 0
            }) { (_) in
                fadeView.removeFromSuperview()
            }
        }
    }

}