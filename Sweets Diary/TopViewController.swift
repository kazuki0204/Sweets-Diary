//
//  TopViewController.swift
//  Sweets Diary
//
//  Created by 丸井一輝 on 2021/05/23.
//

import UIKit

class TopViewController: UIViewController {
    
    @IBAction func goNextButton(_ sender: Any) {
        performSegue(withIdentifier: "addViewController", sender: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
