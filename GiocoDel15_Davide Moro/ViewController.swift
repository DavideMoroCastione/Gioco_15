//
//  ViewController.swift
//  GiocoDel15_Davide Moro
//
//  Created by DAVIDE MORO on 23/10/2019.
//  Copyright © 2019 DAVIDE MORO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblTime: UILabel!
    @IBOutlet weak var lblMoves: UILabel!
    @IBOutlet weak var lblResult: UILabel!
    @IBOutlet weak var btnStart: UIButton!
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var btn5: UIButton!
    @IBOutlet weak var btn6: UIButton!
    @IBOutlet weak var btn7: UIButton!
    @IBOutlet weak var btn8: UIButton!
    @IBOutlet weak var btn9: UIButton!
    @IBOutlet weak var btn10: UIButton!
    @IBOutlet weak var btn11: UIButton!
    @IBOutlet weak var btn12: UIButton!
    @IBOutlet weak var btn13: UIButton!
    @IBOutlet weak var btn14: UIButton!
    @IBOutlet weak var btn15: UIButton!
    @IBOutlet weak var btnNull: UIButton!
    
    var mosse = 0
    var tempo = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        btnLocked()
    }
    
    func contaMosse() {
        mosse = mosse + 1
        lblMoves.text = String(mosse)
    }
    
    func  btnLocked() {
        btn1.isUserInteractionEnabled = false
        btn2.isUserInteractionEnabled = false
        btn3.isUserInteractionEnabled = false
        btn4.isUserInteractionEnabled = false
        btn5.isUserInteractionEnabled = false
        btn6.isUserInteractionEnabled = false
        btn7.isUserInteractionEnabled = false
        btn8.isUserInteractionEnabled = false
        btn9.isUserInteractionEnabled = false
        btn10.isUserInteractionEnabled = false
        btn11.isUserInteractionEnabled = false
        btn12.isUserInteractionEnabled = false
        btn13.isUserInteractionEnabled = false
        btn14.isUserInteractionEnabled = false
        btn15.isUserInteractionEnabled = false
        btnNull.isUserInteractionEnabled = false
    }
    
    
    @IBAction func btn_start(_ sender: Any) {
        btnNull.isUserInteractionEnabled = true
        btn15.isUserInteractionEnabled = true
        btn12.isUserInteractionEnabled = true
    }
    
    
    @IBAction func btn_1(_ sender: Any) {
        btnLocked()
        btn5.isUserInteractionEnabled = true
        btn2.isUserInteractionEnabled = true
    }
    
    @IBAction func btn_2(_ sender: Any) {
        btnLocked()
        btn1.isUserInteractionEnabled = true
        btn3.isUserInteractionEnabled = true
        btn6.isUserInteractionEnabled = true
    }
    
    @IBAction func btn_3(_ sender: Any) {
        btnLocked()
        btn2.isUserInteractionEnabled = true
        btn4.isUserInteractionEnabled = true
        btn7.isUserInteractionEnabled = true
    }
    
    @IBAction func btn_4(_ sender: Any) {
        btnLocked()
        btn3.isUserInteractionEnabled = true
        btn8.isUserInteractionEnabled = true
    }
    
    @IBAction func btn_5(_ sender: Any) {
        btnLocked()
        btn1.isUserInteractionEnabled = true
        btn6.isUserInteractionEnabled = true
        btn9.isUserInteractionEnabled = true
    }
    
    @IBAction func btn_6(_ sender: Any) {
        btnLocked()
        btn2.isUserInteractionEnabled = true
        btn5.isUserInteractionEnabled = true
        btn7.isUserInteractionEnabled = true
        btn10.isUserInteractionEnabled = true
    }
    
    @IBAction func btn_7(_ sender: Any) {
        btnLocked()
        btn3.isUserInteractionEnabled = true
        btn6.isUserInteractionEnabled = true
        btn8.isUserInteractionEnabled = true
        btn11.isUserInteractionEnabled = true
    }
    
    @IBAction func btn_8(_ sender: Any) {
        btnLocked()
        btn4.isUserInteractionEnabled = true
        btn7.isUserInteractionEnabled = true
        btn12.isUserInteractionEnabled = true
    }
    
    @IBAction func btn_9(_ sender: Any) {
        btnLocked()
        btn5.isUserInteractionEnabled = true
        btn10.isUserInteractionEnabled = true
        btn13.isUserInteractionEnabled = true
    }
    
    @IBAction func btn_10(_ sender: Any) {
        btnLocked()
        btn6.isUserInteractionEnabled = true
        btn9.isUserInteractionEnabled = true
        btn11.isUserInteractionEnabled = true
        btn14.isUserInteractionEnabled = true
    }
    
    @IBAction func btn_11(_ sender: Any) {
        btnLocked()
        btn7.isUserInteractionEnabled = true
        btn10.isUserInteractionEnabled = true
        btn12.isUserInteractionEnabled = true
        btn15.isUserInteractionEnabled = true
    }
    
    @IBAction func btn_12(_ sender: Any) {
        btnLocked()
        btn8.isUserInteractionEnabled = true
        btn11.isUserInteractionEnabled = true
        btnNull.isUserInteractionEnabled = true
    }
    
    @IBAction func btn_13(_ sender: Any) {
        btnLocked()
        btn9.isUserInteractionEnabled = true
        btn14.isUserInteractionEnabled = true
    }
    
    @IBAction func btn_14(_ sender: Any) {
        btnLocked()
        btn10.isUserInteractionEnabled = true
        btn13.isUserInteractionEnabled = true
        btn15.isUserInteractionEnabled = true    }
    
    @IBAction func btn_15(_ sender: Any) {
        btnLocked()
        btn11.isUserInteractionEnabled = true
        btn14.isUserInteractionEnabled = true
        btnNull.isUserInteractionEnabled = true
    }
    
    @IBAction func btn_null(_ sender: Any) {
        btnLocked()
        btn12.isUserInteractionEnabled = true
        btn15.isUserInteractionEnabled = true
    }
    
    func sposta() {
        
    }
}

