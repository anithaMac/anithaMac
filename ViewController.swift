//
//  ViewController.swift
//  test
//
//  Created by Apple on 09/07/21.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate,UIScrollViewDelegate {
    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var scroll: UIScrollView!
    @IBOutlet weak var hi: UITextField!
    @IBOutlet weak var password: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        username.delegate = self
        password.delegate = self
      
       print("hiiiiiii")
        
    }


    
    @IBAction func clikon(_ sender: Any) {
        
        print("hi")
        
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
           username.resignFirstResponder()
        password.resignFirstResponder()
           return true
       }
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
            
       
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

        DispatchQueue.main.async {
            var contentRect = CGRect.zero

            for view in self.scroll.subviews {
               contentRect = contentRect.union(view.frame)
            }

            self.scroll.contentSize = contentRect.size
        }
    }
}





