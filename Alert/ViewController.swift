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

    @IBAction func turnOnAction(_ sender: UIButton) {
        if (isLampOn) {
            let lampOnAlert = UIAlertController(title: "경고", message: "현재 On 상태입니다.", preferredStyle: UIAlertController.Style.alert)
            let onAction = UIAlertAction(title: "네, 알겠습니다.", style: UIAlertAction.Style.default, handler: nil)
            
            lampOnAlert.addAction(onAction)
            present(lampOnAlert, animated: true, completion: nil)
        } else {
            imageView.image = onImg
            isLampOn = true
        }
    }
    
    @IBAction func turnOffAction(_ sender: UIButton) {
        if (isLampOn == false) {
            let lampOnAlert = UIAlertController(title: "경고", message: "현재 Off 상태입니다.", preferredStyle: UIAlertController.Style.alert)
            let onAction = UIAlertAction(title: "네, 알겠습니다.", style: UIAlertAction.Style.default, handler: nil)
            
            lampOnAlert.addAction(onAction)
            present(lampOnAlert, animated: true, completion: nil)
        } else {
            let lampOffAlert = UIAlertController(title: "램프 끄기", message: "램프를 끄시겠습니까?", preferredStyle: UIAlertController.Style.alert)
            let offAction = UIAlertAction(title: "네", style: UIAlertAction.Style.default, handler: {
                ACTION in self.imageView.image = self.offImg
                self.isLampOn = false
            })
            let cancelAction = UIAlertAction(title: "아니요", style: UIAlertAction.Style.cancel, handler: nil)
            
            lampOffAlert.addAction(offAction)
            lampOffAlert.addAction(cancelAction)
            
            present(lampOffAlert, animated: true, completion: nil)
            
        }
    }
    
    
    @IBAction func deleteAction(_ sender: UIButton) {
    }
    
}

