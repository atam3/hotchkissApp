//
//  athleticsMediaViewController.swift
//  Hotchkiss Events
//
//  Created by Alex Tam on 6/15/19.
//  Copyright © 2019 Alex Tam. All rights reserved.
//

import UIKit

class athleticsMediaViewController: UIViewController, UICollectionViewDataSource
{
    @IBOutlet weak var logo: UIImageView?
    @IBOutlet weak var name: UILabel?
    @IBOutlet weak var teamName: UILabel?
    @IBOutlet weak var collectionView: UICollectionView?
    @IBOutlet weak var collectionViewLayout: UICollectionViewFlowLayout?
    
    override func viewDidLayoutSubviews()
    {
        let view = logo!.superview!
        var insets = self.view.safeAreaInsets
        insets.bottom = 0
        view.frame = self.view.bounds.inset(by: insets)
        
        let bounds = view.bounds
        
        let logoSides = bounds.size.width * 0.3
        logo?.frame = CGRect(x: 0, y: 0, width: logoSides, height: logoSides)
        
        name?.frame = CGRect(x: logo!.frame.maxX, y: 0, width: bounds.size.width - logoSides - 4, height: logoSides)
        name?.adjustsFontSizeToFitWidth = true
        
        let teamNameWidth = bounds.size.width * 0.79
        let teamNameHeight = bounds.size.height * 0.04
        teamName?.frame = CGRect(x: 43, y: name!.frame.maxY - 3, width: teamNameWidth, height: teamNameHeight)
        
        let collectionViewWidth = bounds.size.width * 0.865
        let collectionViewHeight = bounds.size.height * 0.76
        collectionView?.frame = CGRect(x: 26, y: teamName!.frame.maxY + 8, width: collectionViewWidth, height: collectionViewHeight)
    }
    
    var athleticsEvent: athleticsEvent?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView?.dataSource = self
        collectionViewLayout?.itemSize = CGSize(width: 100, height: 70)
        
        
        
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
        imageView.frame = cell.contentView.bounds
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
        
        let r = UITapGestureRecognizer(target: self, action: #selector(imageTap))
        imageView.addGestureRecognizer(r)
        imageView.isUserInteractionEnabled = true
        
        return cell
    }

    @objc func imageTap(r: UITapGestureRecognizer)
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
