//
//  NextViewController.swift
//  Swift6Days
//
//  Created by Takuya Ando on 2020/12/12.
//

import UIKit

protocol SetOkDelegate {
  func setOk(check:Person)
}

class NextViewController: UIViewController {

  // 構造体をインスタンス化
  var person = Person()
  
  @IBOutlet weak var nameTextField: UITextField!
  @IBOutlet weak var hobbyTextField: UITextField!
  @IBOutlet weak var movieTextField: UITextField!
  
  var setOkDelegate:SetOkDelegate?
  
  override func viewDidLoad() {
        super.viewDidLoad()
    
    print(person.name)
      
    }
    
  @IBAction func done(_ sender: Any) {
    
    person.name = nameTextField.text!
    person.hobby = hobbyTextField.text!
    person.movie = movieTextField.text!
    
    setOkDelegate?.setOk(check:person)
    
    dismiss(animated: true, completion: nil)
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
