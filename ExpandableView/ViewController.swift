//
//  ViewController.swift
//  ExpandableView
//
//  Created by fkahraman on 25.06.2019.
//  Copyright © 2019 fkahraman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ShowHideViewBtnOutlet: UIButton!
    @IBOutlet weak var Btn1Outlet: UIButton!
    @IBOutlet weak var Btn2Outlet: UIButton!
    @IBOutlet weak var ExpView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        ExpView.isHidden = true
        ShowHideViewBtnOutlet.setTitle("Show View", for: .normal)
        Btn1Outlet.setTitle("\u{1F680}", for: .normal)
        Btn2Outlet.setTitle("\u{1F696}", for: .normal)
    }

    @IBAction func ExpBtnClick(_ sender: Any) {
        UIView.animate(withDuration: 0.3, animations:{
            self.ExpView.isHidden = !self.ExpView.isHidden
            if (!self.ExpView.isHidden)
            {
                self.ShowHideViewBtnOutlet.setTitle("Hide View", for: .normal)
                
            }
            else
            {
                self.ShowHideViewBtnOutlet.setTitle("Show View", for: .normal)
            }
        })
    }
}

