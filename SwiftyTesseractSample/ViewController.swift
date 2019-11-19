//
//  ViewController.swift
//  SwiftyTesseractSample
//
//  Created by 中 裕紀 on 2019/07/19.
//  Copyright © 2019 Personal. All rights reserved.
//

import UIKit
import SwiftyTesseract

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        guard let image = UIImage(named: "test2") else {return}
        
        let tesseract = SwiftyTesseract(languages: [.english, .japanese])
        tesseract.performOCR(on: image) { (recognizedText) in
            guard let text = recognizedText else {return}
            print("\(text)")
        }
    }
}

