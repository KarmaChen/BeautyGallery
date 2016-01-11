//
//  KoreanViewController.swift
//  BeautyGallery
//
//  Created by 陈昆涛 on 16/1/8.
//  Copyright © 2016年 陈昆涛. All rights reserved.
//

import UIKit
import Social

class KoreanViewController: UIViewController {
    @IBOutlet weak var beautyImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
           }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func facebookTapped(sender: AnyObject) {
        let controller:SLComposeViewController=SLComposeViewController(forServiceType: SLServiceTypeFacebook)
        controller.setInitialText("一起来玩女神")
        controller.addImage(beautyImage.image)
        self.presentViewController(controller, animated: true, completion: nil)

    }

    @IBAction func TwitterTapped(sender: AnyObject) {
        let controller:SLComposeViewController=SLComposeViewController(forServiceType: SLServiceTypeTwitter)
        controller.setInitialText("一起来玩女神")
        controller.addImage(beautyImage.image)
        self.presentViewController(controller, animated: true, completion: nil)

    }
    @IBAction func weiboTapped(sender: AnyObject) {
        let controller:SLComposeViewController=SLComposeViewController(forServiceType: SLServiceTypeTencentWeibo)
        controller.setInitialText("一起来玩女神")
        controller.addImage(beautyImage.image)
        self.presentViewController(controller, animated: true, completion: nil)

    }
}
