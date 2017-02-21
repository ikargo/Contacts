//
//  NameAndPhoneOfTheContactViewController.swift
//  ContactsEffect
//
//  Created by planB on 21/2/17.
//  Copyright © 2017 Ioannis. All rights reserved.
//

import UIKit

class NameAndPhoneOfTheContactViewController: UIViewController {
    
    @IBOutlet var labelForTheName: UILabel!
    @IBOutlet var labelForThePhone: UILabel!
    var oneContact: TheObjectCalledContact? /* It MUST BE OPTIONAL*/
    
    
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if self.oneContact != nil {
            if let nameOfTheClickedCondact = oneContact?.nameOfTheContact   {
                self.labelForTheName.text = nameOfTheClickedCondact
            }
            if let phoneOfTheClickedCondact = oneContact?.phoneOfTheContact{
                self.labelForThePhone.text = phoneOfTheClickedCondact
            }
    }
        
        
        
        
        
        
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
