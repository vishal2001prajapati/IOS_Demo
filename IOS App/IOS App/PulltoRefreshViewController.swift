//
//  PulltoRefreshViewController.swift
//  IOS App
//
//  Created by Vishal Prajapati on 22/03/22.
//

import UIKit

class PulltoRefreshViewController: UIViewController {
    
    //MARK: - Outlets
    @IBOutlet weak var myTable: UITableView!
    
    //MARK: - Variables and Array
    var alphabetList = ["A","B","C","D","E","F","G"]
    var alphabetNewList = ["aaa","bbb","ccc","ddd","eee","fff","ggg"]
    let refreshControl = UIRefreshControl()
    var refreshCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        refreshControl.tintColor = UIColor.green
        refreshControl.addTarget(self, action: #selector(refreshData), for: .valueChanged)
        myTable.addSubview(refreshControl)
    }
    
    @objc func refreshData() {
        if refreshCount < alphabetNewList.count {
            alphabetList.append(alphabetNewList[refreshCount])
            refreshCount = refreshCount + 1
        }
        refreshControl.endRefreshing()
        myTable.reloadData()
    }
}
//MARK: - UITableViewDataSource
extension PulltoRefreshViewController:UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return alphabetList.count
    }

}
//MARK: - UITableViewDelegate
extension PulltoRefreshViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = alphabetList[indexPath.row]
        return cell
    }
    
}
