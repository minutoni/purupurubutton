//
//  ViewController.swift
//  kumorigarasusefect
//
//  Created by 所　紀彦 on 2016/04/05.
//  Copyright © 2016年 norihiko tokoro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // ボタン.
    @IBOutlet var myButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // ボタンを作成する.
        myButton = UIButton()
        myButton.frame = CGRectMake(0,0,100,100)
        myButton.backgroundColor = UIColor.greenColor();
        myButton.layer.masksToBounds = true
        myButton.setTitle("ボタン", forState: UIControlState.Normal)
        myButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        myButton.layer.cornerRadius = 50.0
        myButton.layer.position = CGPoint(x: self.view.frame.width/2, y:self.view.frame.height/2)
        
        // TouchDownの時のイベントを追加する.
        myButton.addTarget(self, action: "onDownButton:", forControlEvents: .TouchDown)
        
        // TouchUpの時のイベントを追加する.
        myButton.addTarget(self, action: "onUpButton:", forControlEvents: .TouchUpInside)
        
        // 背景色を黒に設定する.
        self.view.backgroundColor = UIColor.blackColor()
        
        // ボタンをViewに追加する.
        self.view.addSubview(myButton);
    }
    
    /*
    ボタンイベント(Down)
    */
    func onDownButton(sender: UIButton){
        UIView.animateWithDuration(0.06,
            
            // アニメーション中の処理.
            animations: { () -> Void in
                
                // 縮小用アフィン行列を作成する.
                self.myButton.transform = CGAffineTransformMakeScale(0.9, 0.9)
                
            })
            { (Bool) -> Void in
                
        }
    }
    
    /*
    ボタンイベント(Up)
    */
    func onUpButton(sender: UIButton){
        UIView.animateWithDuration(0.1,
            
            // アニメーション中の処理.
            animations: { () -> Void in
                
                // 拡大用アフィン行列を作成する.
                self.myButton.transform = CGAffineTransformMakeScale(0.4, 0.4)
                
                // 縮小用アフィン行列を作成する.
                self.myButton.transform = CGAffineTransformMakeScale(1.0, 1.0)
                
            })
            { (Bool) -> Void in
                
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

