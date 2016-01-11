//
//  ViewControllerExtension.swift
//  BeautyGallery
//
//  Created by 陈昆涛 on 16/1/8.
//  Copyright © 2016年 陈昆涛. All rights reserved.
//

import Foundation
import UIKit
extension ViewController: UIPickerViewDataSource {
    // two required methods
    //遵循协议 第一方法是多少个滚动  第二是有滚动有几值
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return beauties.count
    }
}
extension ViewController: UIPickerViewDelegate {
    // several optional methods:
    
    // func pickerView(pickerView: UIPickerView!, widthForComponent component: Int) -> CGFloat
    
    // func pickerView(pickerView: UIPickerView!, rowHeightForComponent component: Int) -> CGFloat
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
        return beauties[row]
    }
    
    // func pickerView(pickerView: UIPickerView!, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString!
    
    // func pickerView(pickerView: UIPickerView!, viewForRow row: Int, forComponent component: Int, reusingView view: UIView!) -> UIView!
    
    // func pickerView(pickerView: UIPickerView!, didSelectRow row: Int, inComponent component: Int)
}

