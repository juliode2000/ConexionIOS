//
//  ViewController.swift
//  demoConexionIOS
//
//  Created by Julio Alfonso De Leon Razo on 21/11/15.
//  Copyright © 2015 Julio Alfonso De Leon Razo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textBusqueda: UITextField!
    @IBOutlet weak var textViewResultado: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func sincrono(){
        let url$ = "https://openlibrary.org/api/books?jscmd=data&format=json&bibkeys=ISBN:" + textBusqueda.text!
        let url = NSURL(string: url$)
        let datos:NSData?=NSData(contentsOfURL: url!)
        let texto = NSString(data: datos!, encoding: NSUTF8StringEncoding)
        
        textViewResultado.text = texto! as String
    print(url)
    
    }
    @IBAction func buscarButon(sender: AnyObject) {
        sincrono()
        
    }
       @IBAction func clearButton(sender: AnyObject) {
        textBusqueda.text = ""
    }

}

