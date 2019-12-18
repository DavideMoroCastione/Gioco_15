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
    var b = ""
    var x = 3 //variabile per le righe della matrice
    var y = 3 //variabile per le colonne della matrice
    var matrice: [[UIButton]] = [[]]
    @IBOutlet var arr: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        matrice = [[Btn1, Btn2, Btn3, Btn4],
                   [Btn5, Btn6, Btn7, Btn8],
                   [Btn9, Btn10, Btn11, Btn12],
                   [Btn13, Btn14, Btn15, BtnNull]]
        
        
    }
    @IBAction func btn_reset(_ sender: Any) {
        resetta()
        
    }
    
    
    @IBAction func btn_start(_ sender: Any) {
        mischia()
        
    }
    
    
    @IBAction func Sposta(_ sender: UIButton) {
        contaMosse()
        vinto()
        var ciao :Int!
        ciao = arr.firstIndex(of: sender)
        var r = ciao%4
        var c = ciao/4
        if(c<3) {
            
            if(matrice[r][c+1].currentTitle! == "0") {
                b = matrice[r][c].currentTitle!
                matrice[r][c+1].setTitle(String(b), for: .normal)
                matrice[r][c].setTitle(String("0"), for: .normal)
            }
        }
        if(c>0) {
            
            if(matrice[r][c-1].currentTitle! == "0") {
                b = matrice[r][c].currentTitle!
                matrice[r][c-1].setTitle(String(b), for: .normal)
                matrice[r][c].setTitle(String("0"), for: .normal)
            }
        }
        if( r < 3) {
            
            if(matrice[r+1][c].currentTitle! == "0") {
                b = matrice[r][c].currentTitle!
                matrice[r+1][c].setTitle(String(b), for: .normal)
                matrice[r][c].setTitle(String("0"), for: .normal)
            }
        }
        if(r < 0) {
            if(matrice[r-1][c].currentTitle! == "0") {
                b = matrice[r][c].currentTitle!
                matrice[r-1][c].setTitle(String(b), for: .normal)
                matrice[r][c].setTitle(String("0"), for: .normal)
            }
        }
        
    }
    
    // conta le mosse fatte per vincere
    func contaMosse() {
        mosse = mosse + 1
        lblMoves.text = String(mosse)
    }
    
    // mischia le caselle all'inizio del gioco
    func mischia() {
        //matrice con bottoni
        for _ in 0 ... 50 {
            
            numero = Int(arc4random() % 4 + 1)
            
            // muove a sinistra
            if(numero == 1 && x >= 1) {
                
                a = matrice[x][y].currentTitle!
                matrice[x][y].setTitle(String(matrice[x-1][y].currentTitle!), for: .normal)
                matrice[x-1][y].setTitle(String(a), for: .normal)
                x = x - 1
            }
            // muove in alto
            else if(numero == 2 && y >= 1) {
                
                a = matrice[x][y].currentTitle!
                matrice[x][y].setTitle(String(matrice[x][y-1].currentTitle!), for: .normal)
                matrice[x][y-1].setTitle(String(a), for: .normal)
                y = y - 1
            }
            // muove a destra
            else if(numero == 3 && x <= 2) {
                
                a = matrice[x][y].currentTitle!
                matrice[x][y].setTitle(String(matrice[x+1][y].currentTitle!), for: .normal)
                matrice[x+1][y].setTitle(String(a), for: .normal)
                x = x + 1
            }
            // muove in basso
            else if(numero == 4 && y <= 2) {
                
                a = matrice[x][y].currentTitle!
                matrice[x][y].setTitle(String(matrice[x][y+1].currentTitle!), for: .normal)
                matrice[x][y+1].setTitle(String(a), for: .normal)
                y = y + 1
            }
        }
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
        BtnNull.setTitle(String(0), for: .normal)
        y = 3
        x = 3
    }
    
    func vinto () {
        if(Btn1.currentTitle! == "1" && Btn2.currentTitle! == "2" &&
            Btn3.currentTitle! == "3" && Btn4.currentTitle! == "4" &&
            Btn5.currentTitle! == "5" && Btn6.currentTitle! == "6" &&
            Btn7.currentTitle! == "7" && Btn8.currentTitle! == "8" &&
            Btn9.currentTitle! == "9" && Btn10.currentTitle! == "10" &&
            Btn11.currentTitle! == "11" && Btn12.currentTitle! == "12" &&
            Btn13.currentTitle! == "13" && Btn14.currentTitle! == "14" &&
            Btn15.currentTitle! == "15" && BtnNull.currentTitle! == "0") {
            
            lblResult.text = "Hai vinto"
        }
    }
    

}

