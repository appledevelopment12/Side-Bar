//
//  ViewController.swift
//  sideView
//
//  Created by Rajeev on 24/03/23.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet var trailing: NSLayoutConstraint!
    @IBOutlet var leading: NSLayoutConstraint!
    
    var menuOut = false
    override func viewDidLoad()
    {
        super.viewDidLoad()
       
    }


    @IBAction func menuTapped(_ sender: UIBarButtonItem)
    {
        
        if menuOut == false
        {
            leading.constant = 150
            trailing.constant = -150
            menuOut = true
            
        }
        else
        {
            leading.constant = 0
            trailing.constant = 0
            menuOut = false
        }
        
    }
}

