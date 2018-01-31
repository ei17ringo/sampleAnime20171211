//
//  ViewController.swift
//  sampleAnime
//
//  Created by Eriko Ichinohe on 2018/01/31.
//  Copyright © 2018年 Eriko Ichinohe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // アニメーション対象のView（位置と大きさを決定）
    let aView = UIView(frame: CGRect(x: 0, y: 20, width: 100, height: 100))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //青色にセット
        self.aView.backgroundColor = UIColor.blue
        //画面上に配置
        self.view.addSubview(aView)
        
    }

    @IBAction func tapBtn(_ sender: UIButton) {
    
        //青から緑に変わるアニメーション
        //withDuration: アニメーションが行われる間隔（秒）
        //animations: 変化後の状態
        //completion:アニメーション後に行われる処理
        UIView.animate(withDuration: 2, animations:{ () -> Void in
            self.aView.backgroundColor = UIColor.green
            self.aView.frame.origin.x = self.view.bounds.width - 200
//            self.aView.frame.origin.y = 200
        },completion: {finished in
            UIView.animate(withDuration: 2, animations:{ () -> Void in
//                self.aView.backgroundColor = UIColor.green
//                self.aView.frame.origin.x = 200
                self.aView.frame.origin.y = 200
            })
            
            
            
        })
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

