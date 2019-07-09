//
//  ViewControllerNSB.swift
//  Datastore
//
//  Created by Laverene Lopez on 05/07/19.
//  Copyright © 2019 Laverene Lopez. All rights reserved.
//

import UIKit

class ViewControllerNSB: UIViewController,UITextFieldDelegate  {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .red
        
        let txt1 = UITextField()
        txt1.borderStyle = .roundedRect;
        txt1.text = "    1212"
        txt1.frame = CGRect(x: 50, y: 150, width: 50, height: 50)
        self.view.addSubview(txt1)
        self.view.bringSubviewToFront(txt1)
        txt1.tag = 1
        txt1.delegate = self as! UITextFieldDelegate
        
        let txt2 = UITextField()
        txt2.borderStyle = .roundedRect;
        txt2.text = "    1212"
        txt2.frame = CGRect(x: 105  , y: 150, width: 50, height: 50)
        self.view.addSubview(txt2)
        self.view.bringSubviewToFront(txt2)
        txt2.tag = 2
        txt2.delegate = self as! UITextFieldDelegate

        // Do any additional setup after loading the view.
    }
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason)
    {
        print(textField.tag)
        
        let txt = self.view.viewWithTag(2) as! UITextField;
        print(txt.text)
    }
\\
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
