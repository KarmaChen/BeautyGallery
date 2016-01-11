//
//  ViewController.swift
//  BeautyGallery
//
//  Created by 陈昆涛 on 16/1/8.
//  Copyright © 2016年 陈昆涛. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var beautyPicker: UIPickerView!
    let beauties = ["范冰冰","李冰冰","王菲","周迅","杨幂"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        beautyPicker.dataSource = self
        beautyPicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "GoToGallery"{
            //数组排列 0开始
            let index = beautyPicker.selectedRowInComponent(0)
            //转化到GalleryViewController
            let vc = segue.destinationViewController as! GalleryViewController
            switch index{
            case 0 :
                vc.imageName = "fangbingbing"
            case 1 :
                vc.imageName = "libingbing"
            case 2 :
                vc.imageName = "wangfei"

            case 3 :
                vc.imageName = "zhouxun"

            case 4 :
                vc.imageName = "yangmi"
            default:
                vc.imageName = nil
                
            }
            
        }
        }
    
    @IBAction func close(segue: UIStoryboardSegue) {
        print("closed!")
    }
}


