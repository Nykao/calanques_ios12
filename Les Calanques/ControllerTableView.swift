//
//  ControllerTableView.swift
//  Les Calanques
//
//  Created by Nicolas Meunier on 12/08/2019.
//  Copyright © 2019 Nicolas Meunier. All rights reserved.
//

import UIKit

class ControllerTableView: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var calanques: [Calanque] = []
    var cellID = "Alternative"

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        calanques = CalanqueCollection().all()

        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return calanques.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let calanque = calanques[indexPath.row]
        if let cell = tableView.dequeueReusableCell(withIdentifier: cellID) as? CallanqueCellAlternativeTableViewCell {
            cell.calanque = calanque
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
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
