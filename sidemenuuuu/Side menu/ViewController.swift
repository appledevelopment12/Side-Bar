//
//  ViewController.swift
//  Side menu
//
//  Created by Rajeev on 25/03/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var containerView: UIView!
    
    @IBOutlet var tableView: UITableView!
    var viewOpen:Bool = true
    
    var titleNames = ["ProfileEdit","Profile","Support","Setting"]
    var images = ["editProfile","profile","support","setting"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.containerView.isHidden = true
        viewOpen = false
       tableView.backgroundColor = .black
    }
   
    
    

    @IBAction func butttonTapped(_ sender: UIButton)
    {
        containerView.isHidden = false
        tableView.isHidden = false
        if !viewOpen
        {
         viewOpen = true
            containerView.frame = CGRect(x: 0, y: 103, width: 0, height: 749)
            tableView.frame = CGRect(x: 0, y: 0, width: 0, height: 749)
            UIView.animate(withDuration: 0.5)
            {
                self.containerView.frame = CGRect(x: 0, y: 103, width: 240, height: 749)
                self.tableView.frame = CGRect(x: 0, y: 0, width: 240, height: 749)
            }
            
        }
        else
        {
            containerView.isHidden = true
            tableView.isHidden = true
            viewOpen = true
            containerView.frame = CGRect(x: 0, y: 103, width: 0, height: 749)
            tableView.frame = CGRect(x: 0, y: 0, width: 0, height: 749)
            UIView.animate(withDuration: 0.5)
            {
                self.containerView.frame = CGRect(x: 0, y: 103, width: 240, height: 749)
                self.tableView.frame = CGRect(x: 0, y: 0, width: 240, height: 749)
            }
            
        }
        
    }
    
}
extension ViewController:UITableViewDelegate,UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titleNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     //   let cell = tableView.dequeueReusableCell(withIdentifier: "TitleTableViewCell") as! //TitileTableViewCell
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TitleTableViewCell", for: indexPath) as!
        TitleTableViewCell
        cell.lbl.text = titleNames[indexPath.row]
        cell.img.image = UIImage(named: images[indexPath.row])
        cell.backgroundColor = .black
        return cell
    }
    
    
}
