//
//  ViewController.swift
//  PinchGesture
//
//  Created by 윤수민 on 2022/06/10.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var txtPinch: UILabel!
    //글자 크기 변수 선언
    var initialFontSize : CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let Pinch = UIPinchGestureRecognizer(target: self, action: #selector(ViewController.doPinch(_:)))
        self.view.addGestureRecognizer(Pinch)
    }
    
    @objc func doPinch(_ Pinch: UIPinchGestureRecognizer) {
        if (Pinch.state == UIGestureRecognizer.State.began) {
            initialFontSize = txtPinch.font.pointSize
        } else {
            txtPinch.font = txtPinch.font.withSize(initialFontSize * Pinch.scale)
        }
    }


}

