//
//  ViewController.swift
//  youtube
//
//  Created by test on 05/03/19.
//  Copyright © 2019 cognizant. All rights reserved.
//

import UIKit


func CGSizeMake(_ width: CGFloat, _ height: CGFloat) -> CGSize {
    return CGSize(width: width, height: height)
}
func CGRectMake(_ x: CGFloat, _ y: CGFloat, _ width: CGFloat, _ height: CGFloat) -> CGRect {
    return CGRect(x: x, y: y, width: width, height: height)
}


class HomeController: UICollectionViewController ,UICollectionViewDelegateFlowLayout{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        navigationItem.title="Home"
        collectionView?.backgroundColor=UIColor.white
        
        collectionView?.register(VideoCell.self, forCellWithReuseIdentifier: "cellId")
        
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell=collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath)
        //.backgroundColor=UIColor.red
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSizeMake(view.frame.width,200)
    }


}

class VideoCell: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame:frame)
        setupViews()
        
    }
    
    let thumbnailImageView:UIImageView={
        let imageView=UIImageView()
        imageView.backgroundColor=UIColor.blue
        imageView.translatesAutoresizingMaskIntoConstraints=false
        return imageView
    }()
    
    func setupViews(){
       // backgroundColor=UIColor.blue
        addSubview(thumbnailImageView)
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat:"H:|-16-[v0]-16-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0":thumbnailImageView ]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat:"V:|-16-[v0]-16-|", options:  NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0":thumbnailImageView ]))
        
        //thumbnailImageView.frame=CGRectMake(0,0,100,100)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init (coder) not implemented ")
    }
}

