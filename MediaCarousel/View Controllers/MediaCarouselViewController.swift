//
//  MediaCarouselViewController.swift
//  LearningCollectionViews
//
//  Created by Ryan Brear on 2019/10/14.
//  Copyright © 2019 Ryan Brear. All rights reserved.
//

import UIKit

public class MediaCarouselViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    public var data: [MediaItem]?
    public var mediaItemBorderColor: UIColor = UIColor.red
    
    private let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.translatesAutoresizingMaskIntoConstraints = false
        return cv
    }()
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        addCollectionViewToCarouselVCRootView()
        collectionView.dataSource = self
        collectionView.delegate = self
        let bundle = Bundle(identifier: "indiegro.MediaCarousel")
        collectionView.register(UINib(nibName: "MediaCollectionViewCell", bundle: bundle), forCellWithReuseIdentifier: "cell")
    }
    
    // MARK: - Collection view data source methods
    
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if let data = data {
            return data.count
        }
        return 0
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MediaCollectionViewCell
        if let data = data {
            cell.mediaData = data[indexPath.row]
        }
        cell.layer.borderColor = mediaItemBorderColor.cgColor
        return cell
    }
    
    // MARK: - Collection View Delegate Flow layout methods
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width/2.5, height: collectionView.frame.height - 5)
    }
    
    
    // MARK: - Methods
    
    
    func addCollectionViewToCarouselVCRootView() {
        view.addSubview(collectionView)
        collectionView.backgroundColor = UIColor.clear
        collectionView.topAnchor.constraint(equalTo: view.topAnchor, constant: 5).isActive = true
        collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 5).isActive = true
        collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -5).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -5).isActive = true
    }

   
}
