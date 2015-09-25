//
//  ViewController.swift
//  shake
//
//  Created by xly on 15-5-26.
//  Copyright (c) 2015年 Lily. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //要求当前页面支持对摇动事件可编辑的支持
        UIApplication.sharedApplication().applicationSupportsShakeToEdit = true
        
        //把当前页面作为第一反应者，也就说我们有任何操作结果都会反映到当前页面中
        self.becomeFirstResponder()
        
    }
    
    //使用与摇动相关的方法了，主要有三个:motionBegin捕获摇动开始、motionEnded摇动结束、motionCancelled摇动取消。
    
    override func motionBegan(motion: UIEventSubtype, withEvent event: UIEvent) {
        if motion == UIEventSubtype.MotionShake{
            var alerController = UIAlertController(title: "恭喜你，成功了!", message: nil, preferredStyle: UIAlertControllerStyle.Alert)
            var cancleAction = UIAlertAction(title: "取消", style: UIAlertActionStyle.Cancel, handler: nil)
            
            alerController.addAction(cancleAction)
            self.presentViewController(alerController, animated: true, completion: nil)
        }
    }
    
    override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent) {
        NSLog("开始摇动");
        return;
    }
    
    override func motionCancelled(motion: UIEventSubtype, withEvent event: UIEvent) {
        NSLog("开结束摇动");
        return;
    }

    //大部分view不支持firstresponder,所以要增加这个方法
    override func canBecomeFirstResponder() -> Bool {
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

