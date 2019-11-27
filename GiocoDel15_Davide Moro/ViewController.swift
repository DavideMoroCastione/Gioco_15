//
//  ViewController.swift
//  GiocoDel15_Davide Moro
//
//  Created by DAVIDE MORO on 23/10/2019.
//  Copyright © 2019 DAVIDE MORO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var lblMoves: UILabel!
    @IBOutlet weak var lblResult: UILabel!
    @IBOutlet weak var btnStart: UIButton!
    @IBOutlet weak var Btn1: UIButton!
    @IBOutlet weak var Btn2: UIButton!
    @IBOutlet weak var Btn3: UIButton!
    @IBOutlet weak var Btn4: UIButton!
    @IBOutlet weak var Btn5: UIButton!
    @IBOutlet weak var Btn6: UIButton!
    @IBOutlet weak var Btn7: UIButton!
    @IBOutlet weak var Btn8: UIButton!
    @IBOutlet weak var Btn9: UIButton!
    @IBOutlet weak var Btn10: UIButton!
    @IBOutlet weak var Btn11: UIButton!
    @IBOutlet weak var Btn12: UIButton!
    @IBOutlet weak var Btn13: UIButton!
    @IBOutlet weak var Btn14: UIButton!
    @IBOutlet weak var Btn15: UIButton!
    @IBOutlet weak var BtnNull: UIButton!
    @IBOutlet weak var BtnReset: UIButton!
    
    var mosse = 0
    var numero = 0
    var a = ""
    var x = 3
    var y = 3
    var matrice: [[UIButton]] = [[]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        matrice = [[Btn1, Btn2, Btn3, Btn4],
                   [Btn5, Btn6, Btn7, Btn8],
                   [Btn9, Btn10, Btn11, Btn12],
                   [Btn13, Btn14, Btn15, BtnNull]]
        BtnLocked()
        
    }
    @IBAction func btn_reset(_ sender: Any) {
        resetta()
        btnStart.isUserInteractionEnabled = true
    }
    
    
    @IBAction func btn_start(_ sender: Any) {
        mischia()
        btnStart.isUserInteractionEnabled = false
    }
    
    
    
    func contaMosse() {
        mosse = mosse + 1
        lblMoves.text = String(mosse)
    }
    
    func mischia() {
        //matrice con bottoni
        for _ in 0 ... 10 {
            
            numero = Int(arc4random() % 2 + 1)
            
            if(numero == 1 && x >= 1) {
                
                a = matrice[x][y].currentTitle!
                matrice[x][y].setTitle(String(matrice[x - 1][y].currentTitle!), for: .normal)
                matrice[x - 1][y].setTitle(String(a), for: .normal)
                x = x - 1
            }
            else if(numero == 2 && y >= 1 ){
                
                a = matrice[x][y].currentTitle!
                matrice[x][y].setTitle(String(matrice[x][y - 1].currentTitle!), for: .normal)
                matrice[x][y - 1].setTitle(String(a), for: .normal)
                y = y - 1
            }
            else {
                
                if(x == 1){ x = x + 1 }
                else if(y == 1){ y = y + 1 }
            }
        }
    }
    
    
    func BtnLocked() {
        Btn1.isUserInteractionEnabled = false;
        Btn2.isUserInteractionEnabled = false;
        Btn3.isUserInteractionEnabled = false;
        Btn4.isUserInteractionEnabled = false;
        Btn5.isUserInteractionEnabled = false;
        Btn6.isUserInteractionEnabled = false;
        Btn7.isUserInteractionEnabled = false;
        Btn8.isUserInteractionEnabled = false;
        Btn9.isUserInteractionEnabled = false;
        Btn10.isUserInteractionEnabled = false;
        Btn11.isUserInteractionEnabled = false;
        Btn12.isUserInteractionEnabled = false;
        Btn13.isUserInteractionEnabled = false;
        Btn14.isUserInteractionEnabled = false;
        Btn15.isUserInteractionEnabled = false;
        BtnNull.isUserInteractionEnabled = false;
    }
    
    func resetta() {
        Btn1.setTitle(String(1), for: .normal)
        Btn2.setTitle(String(2), for: .normal)
        Btn3.setTitle(String(3), for: .normal)
        Btn4.setTitle(String(4), for: .normal)
        Btn5.setTitle(String(5), for: .normal)
        Btn6.setTitle(String(6), for: .normal)
        Btn7.setTitle(String(7), for: .normal)
        Btn8.setTitle(String(8), for: .normal)
        Btn9.setTitle(String(9), for: .normal)
        Btn10.setTitle(String(10), for: .normal)
        Btn11.setTitle(String(11), for: .normal)
        Btn12.setTitle(String(12), for: .normal)
        Btn13.setTitle(String(13), for: .normal)
        Btn14.setTitle(String(14), for: .normal)
        Btn15.setTitle(String(15), for: .normal)
        BtnNull.setTitle(String("--"), for: .normal)
    }
}

