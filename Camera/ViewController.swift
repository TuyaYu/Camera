//
//  ViewController.swift
//  Camera
//
//  Created by 余泽禹 on 16/4/20.
//  Copyright © 2016年 余泽禹. All rights reserved.
//

import UIKit
class ViewController: UIViewController ,UIImagePickerControllerDelegate,
UINavigationControllerDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func fromPhotograph(sender: AnyObject) {
        if UIImagePickerController.isSourceTypeAvailable(.Camera){
            //创建图片控制器
            let picker = UIImagePickerController()
            //设置代理
            picker.delegate = self
            //设置来源
            picker.sourceType = UIImagePickerControllerSourceType.Camera
            //允许编辑
            picker.allowsEditing = true
            //打开相机
            self.presentViewController(picker, animated: true, completion: { () -> Void in
                
            })
        }else{
            print("找不到相机")
        }
    }

}

