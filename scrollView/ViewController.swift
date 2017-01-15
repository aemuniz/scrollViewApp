//
//  ViewController.swift
//  scrollView
//
//  Created by Arthur Muniz on 10/01/17.
//  Copyright © 2017 Arthur Muniz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let currentIconsLoaded = 3
    var images = [UIImageView]()
    
    var contentWidth: CGFloat = 0.0
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let scrollViewWidth = scrollView.frame.size.width
        
        print(scrollViewWidth)
        
        for x in 0...(currentIconsLoaded - 1) {
            
            let image = UIImage(named: "icon\(x).png")
            let imageView = UIImageView(image: image)
            
            images.append(imageView)
            
            let newX: CGFloat = scrollViewWidth / 2 + scrollViewWidth * CGFloat(x)
            
            contentWidth += newX
            
            scrollView.addSubview(imageView)
            
            imageView.frame = CGRect(x: newX - 75, y: (view.frame.size.height / 2) - 75, width: 150, height: 150)
        }
        
        scrollView.clipsToBounds = false
        
        scrollView.contentSize = CGSize(width: contentWidth, height: view.frame.size.height)
    }
}

