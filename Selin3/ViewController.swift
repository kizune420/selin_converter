//
//  ViewController.swift
//  Selin3
//
//  Created by Тыкао on 16.02.2022.
//

import UIKit

class ViewController: UIViewController
{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var DEC: UITextField!
    @IBOutlet weak var BIN: UITextField!
    @IBOutlet weak var Switch_Dec: UISwitch!
    @IBOutlet weak var Status: UILabel!
    @IBAction func OK(_ sender: Any)
    {
        var dec=Int(DEC.text!)
        var bin_len=BIN.text?.count
        if (Switch_Dec.isOn==true)
        {
            Status.text="Переводим из 10 в 2 систему"
            var i=Int(dec!)
            var bin=[Int]()
            var count=0
                
            while i>1
            {
                bin.insert(i%2, at: count)
                i=i/2
                count=count+1
                
            }
                bin.insert(1, at: count)
                bin.reverse()
                i=0
                while i<count+1
                {
                    BIN.insertText(String(bin[i]))
                    i=i+1
                
                }
                
        }
        else
        {
            Status.text="Переводим из 2 в 10 систему"
            var dec_mas=[Int]()
            
            for Symb in String(BIN.text!)
            {
                let someString = String(Symb)
                if let someInt = Int(someString)
                {
                    dec_mas += [someInt]
                }
            
            }
            dec_mas.reverse()
            var count=0
            var rez_bin=0.0
            
            while count<Int(bin_len!)
            {
                rez_bin=rez_bin+pow(Double(2),Double(count))
                count=count+1
            }
            DEC.text=String(Int(rez_bin))
            
        }

    }
}

