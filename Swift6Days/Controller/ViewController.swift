//
//  ViewController.swift
//  Swift6Days
//
//  Created by Takuya Ando on 2020/12/12.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, SetOkDelegate {

  @IBOutlet weak var tableView: UITableView!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    tableView.delegate = self
    tableView.dataSource = self
  }
  
  // セルの数
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 1
  }
  
  // セルの構築
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
    
    let userNameLabel = cell.contentView.viewWithTag(1) as! UILabel
    
    let hobbyLabel = cell.contentView.viewWithTag(2) as! UILabel
    
    let moviewLabel = cell.contentView.viewWithTag(3) as! UILabel
    
    return cell
  }
  
  func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }
  
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 200
  }
  
  @IBAction func favButtonAction(_ sender: Any) {
    // 画面遷移
    performSegue(withIdentifier: "next", sender: nil)
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "next" {
      
    }
  }
}

