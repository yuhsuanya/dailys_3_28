//
//  CameraViewController.swift
//  test
//
//  Created by Yu hsuan Yang on 2021/2/25.
//  Copyright © 2021 graduateproj. All rights reserved.
//

import UIKit
class AddTargetViewController: UIViewController,UITextFieldDelegate{
    var nextButton: UIButton!
 override func viewDidLoad() {
  super.viewDidLoad()
            let codeSegmented = CustomSegmentedControl(frame: CGRect(x: 0, y: 75, width: self.view.frame.width, height: 50), buttonTitle: ["量化目標","一般目標"])
            codeSegmented.backgroundColor = .white
            view.addSubview(codeSegmented)
            //placeholder 左邊距離
            
    
            let myTitle = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 40))
            myTitle.center = CGPoint(x: 207, y:40)
            myTitle.textAlignment = .center
            myTitle.text = "新增目標"
            let customTitleFont:UIFont = UIFont.systemFont(ofSize: 20)
            myTitle.font = customTitleFont
            myTitle.font = UIFont.systemFont(ofSize: 20)
            myTitle.textColor = smartDarkBlue
            self.view.addSubview(myTitle)

            let cancelButton = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 40))
            cancelButton.setTitle("取消", for: .normal)
            cancelButton.setTitleColor(smartDarkGold, for: UIControl.State.normal)
            cancelButton.addTarget(nil, action: #selector(AddEventController.goBack), for: .touchUpInside)
            cancelButton.center = CGPoint(x: 35, y: 40)
            cancelButton.tintColor = smartDarkGold
            self.view.addSubview(cancelButton)

            nextButton = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 40))
            nextButton.setTitle("下一步", for: .normal)
            nextButton.setTitleColor(UIColor.gray, for: UIControl.State.normal)
            nextButton.addTarget(nil, action: #selector(AddEventController.goBack), for: .touchUpInside)
            nextButton.center = CGPoint(x: 371, y: 40)
            nextButton.tintColor = smartDarkGold
            self.view.addSubview(nextButton)

            let myQTarget = UITextField(frame: CGRect(x: 0, y: 0, width: 380, height: 45))
            let QTargetFont:UIFont = UIFont.systemFont(ofSize: 20)
            myQTarget.font = QTargetFont
            myQTarget.center = CGPoint(x: 207, y: 164)
            // 尚未輸入時的預設顯示提示文字
            myQTarget.placeholder = " 目標名稱"
            let indenttView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 10))
            myQTarget.leftView = indenttView
            myQTarget.leftViewMode = .always
            // 輸入框的樣式 這邊選擇圓角樣式
            myQTarget.layer.cornerRadius = 5.0
            // 輸入框右邊顯示清除按鈕時機 這邊選擇當編輯時顯示
            myQTarget.clearButtonMode = .whileEditing
            myQTarget.keyboardType = .default
            // 鍵盤上的 return 鍵樣式 這邊選擇 Done
            myQTarget.returnKeyType = .done
            // 輸入文字的顏色
            myQTarget.textColor = UIColor.black
            // UITextField 的背景顏色
            myQTarget.backgroundColor = UIColor.white
            myQTarget.borderStyle = .none
            myQTarget.delegate = self
            self.view.addSubview(myQTarget)
     
           
            // 使用 UIImageView(frame:) 建立一個 UIImageView
            let myImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 24, height: 24))

            // 使用 UIImage(named:) 放置圖片檔案
            myImageView.image = UIImage(named: "icon_home_goal_goal")

            // 設置新的位置並放入畫面中
            myImageView.center = CGPoint(x:29,y:248)
            self.view.addSubview(myImageView)
           
            let myFinalGoal = UILabel(frame: CGRect(x: 50, y: 240, width: 104, height: 25))
            myFinalGoal.text = "最終目標"
            myFinalGoal.font = UIFont.systemFont(ofSize: 18)
            myFinalGoal.textColor = smartDarkBlue
            self.view.addSubview(myFinalGoal)
            

            let myNumber = UITextField(frame: CGRect(x: 0, y: 0, width: 185, height: 45))
            myNumber.center = CGPoint(x: 109, y: 294)
            let indentView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 10))
            myNumber.leftView = indentView
            myNumber.leftViewMode = .always
            // 尚未輸入時的預設顯示提示文字
            myNumber.placeholder = "數字"
            let NumberFont:UIFont = UIFont.systemFont(ofSize: 18)
            myNumber.font = NumberFont
            // 輸入框的樣式 這邊選擇圓角樣式
            myNumber.layer.cornerRadius = 5.0
            // 輸入框右邊顯示清除按鈕時機 這邊選擇當編輯時顯示
            myNumber.clearButtonMode = .whileEditing
            myNumber.keyboardType = .default
            // 鍵盤上的 return 鍵樣式 這邊選擇 Done
            myNumber.returnKeyType = .done
            // 輸入文字的顏色
            myNumber.textColor = UIColor.black
            // UITextField 的背景顏色
            myNumber.backgroundColor = UIColor.white
            myNumber.borderStyle = .none
            myNumber.delegate = self
            self.view.addSubview(myNumber)
      
            
    
        }
    
       @objc func goBack()
       {
        self.dismiss(animated: true, completion:nil)
       }

       private func textFieldShouldReturn(textField: UITextField) -> Bool
       {
        // 結束編輯 把鍵盤隱藏起來
        self.view.endEditing(true)
        return true
       }

        override func didReceiveMemoryWarning() {
           super.didReceiveMemoryWarning()
           // Dispose of any resources that can be recreated.
       }
}

