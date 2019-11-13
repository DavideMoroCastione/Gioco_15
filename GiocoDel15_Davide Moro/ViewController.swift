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
    
    var mosse = 0
    var numero = 0
    var a = 0
    var x = 3
    var y = 3
    var mat: [[Int]] = [[1, 2, 3, 4],
                        [5, 6, 7, 8],
                        [9, 10, 11, 12],
                        [13, 14, 15, 16]]
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(mat[1][1])
    }
    
    func contaMosse() {
        mosse = mosse + 1
        lblMoves.text = String(mosse)
    }
    
    func mischia() {
        
        for _ in 0 ... 5 {
            numero = Int(arc4random() % 2 + 1)
            if(numero == 1) {
                x = 2
                a = mat[x][y]
                mat[x][y] = mat[x+1][y]
                mat[x+1][y] = a            }
            else {
                y = 2
                a = mat[x][y]
                mat[x][y] = mat[x][y+1]
                mat[x][y+1] = a            }
        }
        
    }
    
    
    @IBAction func btn_start(_ sender: Any) {
        
    }

}

