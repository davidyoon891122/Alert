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
            let offAction = UIAlertAction(title: "네", style: UIAlertAction.Style.default, handler: { // 함수 이름을 선언하지 않고 함수 몸체만 만들어 사용하는 일회용 함수를 익명 함수(Anonymous Functions) 혹은 클로저(Closure)라고 한다.
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
        let lampDelAlert = UIAlertController(title: "램프제거", message: "램프를 제거하시겠습니까 ?", preferredStyle: UIAlertController.Style.alert)
        
        let offAction = UIAlertAction(title: "아니요, 끕니다(Off)", style: UIAlertAction.Style.default, handler: {
            Action in self.imageView.image = self.offImg
            self.isLampOn = false
        })
        
        let onAction = UIAlertAction(title: "아니요, 켭니다(On)", style: UIAlertAction.Style.default, handler: {
            Action in self.imageView.image = self.onImg
            self.isLampOn = true
        })
        
        let deleteAction = UIAlertAction(title: "네, 제거합니다.", style: UIAlertAction.Style.default, handler: {
            Action in self.imageView.image = self.delImg
            self.isLampOn = false
        })
        
        lampDelAlert.addAction(offAction)
        lampDelAlert.addAction(onAction)
        lampDelAlert.addAction(deleteAction)
        
        present(lampDelAlert, animated: true, completion: nil)
        
        
    }
    
}

