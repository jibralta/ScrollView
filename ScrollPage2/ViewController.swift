//
//  ViewController.swift
//  ScrollPage2
//
//  Created by Gladys Umali on 9/30/16.
//  Copyright © 2016 Joy Umali. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // comment test
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    var images = [UIImageView]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewDidAppear(_ animated: Bool) {
        
        var contentWidth: CGFloat = 0.0    //variable created to store content width to set content size.
        
        let scrollWidth = scrollView.frame.size.width
        
        for x in 0...2 {
            let image = UIImage(named: "icon\(x).png")  //picking from the assets
            let imageView = UIImageView(image: image)   //and placing into UIImageView
            images.append(imageView)    //adding to array
            
            // Adding icons to the scroll view. Each will be in the middle but on different screens
            
            var newX: CGFloat = 0.0 // origin or placement point is top left.
            newX = scrollWidth / 2 + scrollWidth * CGFloat(x)
            contentWidth += newX
            scrollView.addSubview(imageView)    //adds the imageView icon to scrollView
            
            imageView.frame = CGRect(x: newX - 75, y: (scrollView.frame.size.height / 2) - 75, width: 150, height: 150)
            
        }
        
        scrollView.clipsToBounds = false
        
        scrollView.contentSize = CGSize(width: contentWidth, height: view.frame.size.height)

    }


}

