//
//  ChefViewController.swift
//  Chef
//
//  Created by Chaekyeong Lee on 2022/12/04.
//

import UIKit

class TabChefViewController: UIViewController {

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
    @IBAction func detailButton(_ sender: Any) {
        let sb = UIStoryboard(name: "DetailViewController", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
    
        navigationController?.pushViewController(vc, animated: true)
        
    }
}
