//
//  ViewController.swift
//  GestureProject2
//
//  Created by 星みちる on 2019/07/17.
//  Copyright © 2019 星みちる. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tapLavel: UILabel!
    //タップされた回数をカウントする
    var tapCount = 0
    
    @IBOutlet weak var swipeCountLabel: UILabel!
    //スワイプされた回数のカウント
    var swipeCount = 0
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }

    @IBAction func tapped(_ sender: UITapGestureRecognizer) {
        
        tapCount = tapCount + 1
        tapLavel.text = "\(tapCount)"
    }
    
    
    @IBAction func swipeCount(_ sender: UISwipeGestureRecognizer) {
        
        countUp()
    }
    
    @IBAction func left(_ sender: UISwipeGestureRecognizer) {
        countUp()
        
    }
    
    @IBAction func down(_ sender: UISwipeGestureRecognizer) {
        countUp()
    }
    
    @IBAction func up(_ sender: UISwipeGestureRecognizer) {
        countUp()
    }
    //同じことが何回も続くとき一つにまとめることができる
    //作るときは下記のように関数を作る
    
    func countUp()  {
        swipeCount = swipeCount + 1
        swipeCountLabel.text = "\(swipeCount)"
    }
    
}
    
    


