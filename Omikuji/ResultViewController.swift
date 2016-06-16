//
//  ResultViewController.swift
//  Omikuji
//
//  Created by shinbo maiki on 2015/10/05.
//  Copyright (c) 2015年 shinbo maiki. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print("Hello World")
        let random = arc4random_uniform(4)
        if (random == 0) {
            imageView.image = UIImage(named: "kyou.png")
        }
        if (random == 1) {
            imageView.image = UIImage(named: "daikichi.png")
        }
        if (random == 2) {
            imageView.image = UIImage(named: "tyukichi.png")
        }
        if (random == 3) {
            imageView.image = UIImage(named: "daikyo.png")
        }
    }

    @IBAction func touchedButton(sender: AnyObject) {
        print("もう一度占う")
        dismissViewControllerAnimated(true, completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
