//
//  GalleryViewController.swift
//  BeautyGallery
//
//  Created by 陈昆涛 on 16/1/8.
//  Copyright © 2016年 陈昆涛. All rights reserved.
//
import UIKit
import Social

class GalleryViewController: UIViewController {
     var imageName: String?

    @IBOutlet weak var beautyImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //加入imageName 不为空  将imageName赋值给name
        if let name = imageName {
            beautyImage.image = UIImage(named:  name)
            switch name {
                case "fangbingbing":
                navigationItem.title = "范冰冰"
            case "libingbing":
                navigationItem.title = "李冰冰"
            case "wangfei":
                navigationItem.title = "王菲"
            case "yangmi":
                navigationItem.title = "杨幂"
            case "zhouxun":
                navigationItem.title = "周迅"
            default :
                navigationItem.title = "女神"
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func shareTapped(sender: AnyObject) {
        let controller:SLComposeViewController=SLComposeViewController(forServiceType: SLServiceTypeTwitter)
        controller.setInitialText("一起来玩女神")
        controller.addImage(beautyImage.image)
        self.presentViewController(controller, animated: true, completion: nil)
        
    }

}
