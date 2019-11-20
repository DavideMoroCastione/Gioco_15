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
    
    var mosse = 0
    var numero = 0
    var a = 0
    var x = 3
    var y = 3
    var mat: [[Int]] = [[1, 2, 3, 4],
                        [5, 6, 7, 8],
                        [9, 10, 11, 12],
                        [13, 14, 15, 16]]
    
    var matrice: [[UIButton]] = [[]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        matrice = [[Btn1, Btn2, Btn3, Btn4],
                   [Btn5, Btn6, Btn7, Btn8],
                   [Btn9, Btn10, Btn11, Btn12],
                   [Btn13, Btn14, Btn15, BtnNull]]
        
    }
    
    func contaMosse() {
        mosse = mosse + 1
        lblMoves.text = String(mosse)
    }
    
    func mischia() {
        //matrice con interi
        for _ in 0 ... 5 {
            numero = Int(arc4random() % 2 + 1)
            
            if(numero == 1 && x >= 0) {
                x = x - 1
                a = mat[x][y]
                mat[x][y] = mat[x+1][y]
                mat[x+1][y] = a
            }
            else if(numero == 2 && y >= 0 ){
                y = y - 1
                a = mat[x][y]
                mat[x][y] = mat[x][y+1]
                mat[x][y+1] = a
            }
            else {}
        }
    }
    
    
    @IBAction func btn_start(_ sender: Any) {
        
    }

}

