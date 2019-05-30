//
//  ColourPickerVC.swift
//  GitExample
//
//  Created by Mujtaba Khan on 30/05/19.
//  Copyright © 2019 Mujtaba Khan. All rights reserved.
//

import UIKit

class ColourPickerVC: UIViewController {

    var delegate: ColourTransfterDelegate? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func SelectedButton(sender: UIButton){
        delegate?.UserColour(colour: sender.backgroundColor!, withName: sender.titleLabel!.text!)
        self.navigationController?.popViewController(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
