//
//  TabHomeViewController.swift
//  Chef
//
//  Created by Chaekyeong Lee on 2022/12/04.
//

import UIKit

class TabHomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    
    
    @IBAction func detailButton(_ sender: Any) {
        let sb = UIStoryboard(name: "DetailViewController", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
    
        navigationController?.pushViewController(vc, animated: true)
    }
}
