//
//  ViewController.swift
//  MenuSide
//
//  Created by hoanglinh on 8/27/19.
//  Copyright © 2019 hoanglinh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var btnmenu:UIButton = UIButton()
    var viewmenu:UIView = UIView()
    override func viewDidLoad() {
        super.viewDidLoad()
        setbtnmenu()
        setupview()
        
    }
    func setbtnmenu (){
        let img = UIImage(named: "Menu")
        btnmenu = UIButton(frame: CGRect(x: 10, y: 10, width: 30, height: 30))
        btnmenu.setBackgroundImage(img, for: UIControl.State.normal)
        navigationController?.navigationBar.addSubview(btnmenu)
        btnmenu.addTarget(self, action: #selector(ViewController.showmenu), for:.touchUpInside)
        navigationController?.navigationBar.barTintColor = UIColor.white
        self.navigationItem.title = "Home"
    }
    @objc func showmenu (){
        print("showed")
        if viewmenu.frame.origin.x<0 {
            
            UIView.animate(withDuration: 1) {
                self.viewmenu.frame.origin.x += self.view.frame.width/2
            }
        }else
        {
            print("hidden")
            UIView.animate(withDuration: 1) {
                self.viewmenu.frame.origin.x -= self.view.frame.width/2
            }
        }
        
    }
    func setupview (){
        viewmenu = UIView(frame: CGRect(
                                        x: -view.frame.width/2,
                                        y: 20 + (navigationController?.navigationBar.frame.height)!,
                                        width: view.frame.width/2,
                                        height: view.frame.height - 20 + (navigationController?.navigationBar.frame.height)!))
        navigationController?.view.addSubview(viewmenu)
        viewmenu.backgroundColor = #colorLiteral(red: 1, green: 0.4977071625, blue: 0.3259981098, alpha: 1)
    }
}

