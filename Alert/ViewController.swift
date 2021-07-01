//
//  ViewController.swift
//  Alert
//
//  Created by David Yoon on 2021/07/01.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var onButton: UIButton!
    @IBOutlet var offButton: UIButton!
    @IBOutlet var delButton: UIButton!
    
    let onImg = UIImage(named: "lamp-on.png")
    let offImg = UIImage(named: "lamp-off.png")
    let delImg = UIImage(named: "lamp-remove.png")
    var isLampOn = true
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imageView.image = onImg
        
    }


}

