//
//  HomeViewController.swift
//  LibraryManagement
//
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var btnMaintenance: UIButton!
    @IBOutlet weak var btnReports: UIButton!
    @IBOutlet weak var btnTransactions: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func maintenanceClicked(_ sender: Any){
        let viewController = UIStoryboard(name: "Main", bundle: .main).instantiateViewController(withIdentifier: "MaintenanceViewController")
        self.navigationController?.pushViewController(viewController, animated: true)

    }
    
    @IBAction func reportsClicked(_ sender: Any){}
    
    @IBAction func transactionsClicked(_ sender: Any){}
    
    @IBAction func logOutClicked(_ sender: Any){
        self.navigationController?.popToRootViewController(animated: true)
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
