//
//  ViewController.swift
//  NewsDigestApp
//
//  Created by karthi on 11/9/16.
//  Copyright © 2016 tringapps. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate{
    
    @IBOutlet weak var baseScrollView: UIScrollView!
    
    @IBOutlet weak var secondScrollView: UIScrollView!
    
    @IBOutlet weak var imageButton: UIButton!
    
    @IBOutlet weak var text: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.black
        let homeImage = UIImageView()
      // scrollView.frame = (self.view.frame)
        
     //   secondScrollView.frame = self.view.frame
        
        homeImage.frame = CGRect(x: 0, y: 0, width:577, height:1024)
        
        
        let scrollViewWidth = homeImage.frame.width
        let scrollViewHeight = self.view.frame.height

        
        homeImage.image = UIImage(named : "HomeImage")
        self.baseScrollView.addSubview(homeImage)
        self.baseScrollView.contentSize = CGSize(width: (self.view.frame.width + 300), height: self.view.frame.height)
        baseScrollView.backgroundColor = UIColor.clear
      //second scroll view
        
        
     //   self.secondScrollView.frame = CGRect(x: 0, y: 0, width: scrollViewWidth, height: scrollViewHeight)
        let secondImage = UIImageView()
        secondImage.frame = CGRect(x: scrollViewWidth, y: 0, width:1364, height:1024)
        secondImage.image = UIImage(named : "fullframe")
        self.secondScrollView.addSubview(secondImage)
        secondScrollView.backgroundColor = UIColor.clear
        self.secondScrollView.contentSize = CGSize(width: self.view.frame.width + 100, height: scrollViewHeight)
        
        secondScrollView.delegate = self
      //  self.baseScrollView.delegate = self
        
        //self.secondScrollView.backgroundColor = UIColor.black
        //self.secondScrollView.addSubview(imageButton)
        //self.secondScrollView.addSubview(text)
     
//        scrollView.contentOffset = CGPoint(x: scrollView.contentOffset.x - 500, y: secondScrollView.contentOffset.y)
        
    }
    /*func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if scrollView.contentOffset.x>0 {
            scrollView.contentOffset.x = 1
        }
    }*/
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
     //   NSLog("second scrollview %f", secondScrollView.contentOffset.x)
        
    //    NSLog("first scroll view %f", scrollView.contentOffset.x)
    
        
   self.baseScrollView.contentOffset = CGPoint(x: scrollView.contentOffset.x * 0.2, y: scrollView.contentOffset.y)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}


