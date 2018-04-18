//
//  ViewController.swift
//  AirPrintiOSSwift
//
//  Created by Rizki Syaputra on 19/04/18.
//  Copyright © 2018 Rizki Syaputra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtText: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func btnPrint(_ sender: Any) {
        
        // 1
        let printController = UIPrintInteractionController.shared
        // 2
        let printInfo = UIPrintInfo(dictionary:nil)
        printInfo.outputType = UIPrintInfoOutputType.general
        printInfo.jobName = "print Job"
        printController.printInfo = printInfo
        
        // 3
        let formatter = UIMarkupTextPrintFormatter(markupText: txtText.text)
        formatter.perPageContentInsets = UIEdgeInsets(top: 72, left: 72, bottom: 72, right: 72)
        printController.printFormatter = formatter
        
        // 4
        printController.present(animated: true, completionHandler: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

