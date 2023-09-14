//
//  ViewController.swift
//  Storytelling App Restart
//
//  Created by Apple on 2023/09/12.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
    //右スワイプ用のインスタンスを生成する
            let rightSwipe = UISwipeGestureRecognizer(
                target: self,
                action: #selector(ViewController.didSwipe(_:))
            )
            rightSwipe.direction = .right
            self.view.addGestureRecognizer(rightSwipe)

    //左スワイプ用のインスタンスを生成する
            let leftSwipe = UISwipeGestureRecognizer(
                target: self,
                action: #selector(ViewController.didSwipe(_:))
            )
            leftSwipe.direction = .left
            self.view.addGestureRecognizer(leftSwipe)

    
}

    //スワイプ時に実行されるメソッド
        @objc func didSwipe(_ sender: UISwipeGestureRecognizer) {

            //スワイプ方向による実行処理をcase文で指定
            switch sender.direction {
           
            case .right: "右スワイプ操作を検出"
                //右スワイプ時に実行したい処理
            
            case .left: "左スワイプ操作を検出"
                //左スワイプ時に実行したい処理
            default:
                break
            }
        }
    }
