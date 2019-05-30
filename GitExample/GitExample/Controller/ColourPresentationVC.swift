//
//  ViewController.swift
//  GitExample
//
//  Created by Mujtaba Khan on 30/05/19.
//  Copyright © 2019 Mujtaba Khan. All rights reserved.
//

import UIKit

class ColourPresentationVC: UIViewController , ColourTransfterDelegate{
   
    

    @IBOutlet weak var colourNamelbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    func UserColour(colour: UIColor, withName Name: String) {
        view.backgroundColor = colour
        colourNamelbl.text = Name
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ColourPickerSeuge"{
        guard let Colour = segue.destination as? ColourPicker else {return}
            Colour.delegate = self
        }
    }


}

