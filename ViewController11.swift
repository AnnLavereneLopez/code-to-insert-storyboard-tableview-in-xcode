//
//  ViewController11.swift
//  Datastore
//
//  Created by Laverene Lopez on 04/07/19.
//  Copyright © 2019 Laverene Lopez. All rights reserved.
//

import UIKit

class ViewController11: UIViewController,UITableViewDataSource ,UITableViewDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
@IBAction func clicked()
{

    let vc = ViewControllerNSB();
    self.navigationController?.pushViewController(vc, animated: true)
    
    
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
      func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if(section == 0)
        {
        return 10
        }
        else
        {
        return 5
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      
        var temp = "reuseIdentifier"
         if(indexPath.section == 0 )
        {
            temp = "reuseIdentifier1"
            if(indexPath.row == 3)
            {
                temp = "reuseIdentifier"
            }
        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: temp, for: indexPath) as! TableViewCell
        if(cell.lblName != nil )
        {
            cell.lblName.text = "  \( indexPath.row)"
        }
        
         
        
        return cell
    }
      func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
      {
        
    }
    
}
