//
//  MaintenanceViewController.swift
//  LibraryManagement
//
//  Created by Saumya Gautam on 08/01/25.
//

import UIKit

class MaintenanceViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    let tableArray = ["Membership", "Books/Movies", "User Management"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.reloadData()
        tableView.tableFooterView = UIView()
    }
    
    @IBAction func logOutClicked(_ sender: Any){
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func homeClicked(_ sender: Any){
        self.navigationController?.popViewController(animated: true)
    }

}

extension MaintenanceViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MaintenanceTableViewCell", for: indexPath) as! MaintenanceTableViewCell
        cell.labelTitle.text = tableArray[indexPath.row]
        return cell
    }
    
    
}
