//
//  ViewController.swift
//  DesignChallenge
//
//  Created by Rajesh on 04/08/18.
//  Copyright © 2018 Rajesh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    @IBOutlet weak var scrView: UIScrollView!
    
    @IBOutlet weak var boxCollectionView: UICollectionView!
    
    @IBOutlet weak var firstHead: UIView!
    @IBOutlet weak var secondHead: UIView!
    @IBOutlet weak var thirdHead: UIView!
    
    
    @IBOutlet weak var firstScreen: UIView!
    @IBOutlet weak var seconScreen: UIView!
    @IBOutlet weak var thirdScreen: UIView!
    
    @IBOutlet weak var heading1: UIView!
    
    @IBOutlet weak var hamBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let screenSize : CGRect = UIScreen.main.bounds
        let screenHeight = screenSize.height
        self.scrView.contentSize = CGSize(width: self.view.frame.size.width * 3, height: screenHeight + 135)
        
        self.seconScreen.frame.origin.x = self.view.frame.size.width
        self.thirdScreen.frame.origin.x = self.view.frame.size.width + self.view.frame.size.width
        
        self.secondHead.frame.origin.x = self.view.frame.size.width
        self.thirdHead.frame.origin.x = self.view.frame.size.width + self.view.frame.size.width
        
        scrView.addSubview(hamBtn)
        
        hamBtn.frame.origin.x = 10
        hamBtn.frame.origin.y = 10
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = boxCollectionView.dequeueReusableCell(withReuseIdentifier: "collCell", for: indexPath as IndexPath) as! CollectionCell
        
        cell.cellLabel.text = "Box"
        
        return cell
    }


}

