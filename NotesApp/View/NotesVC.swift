//
//  NotesVC.swift
//  NotesApp
//
//  Created by Pınar Macit on 2.06.2022.
//

import UIKit

class NotesVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    let viewModel = NotesAppViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func ekleButton(_ sender: Any) {
        var textfield = UITextField()
        
        _ = UIAlertController(title: "Add Item", message: "", preferredStyle: .alert) { text in
            
            if !text.isEmpty {
            
            
            self.viewModel.saveData(title: text)
                
        }
  }
}

}

extension NotesVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NotesCell")!
        
        return cell
    }
    
    
}
