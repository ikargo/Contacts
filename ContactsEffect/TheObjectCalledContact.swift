//
//  TheObjectCalledContact.swift
//  ContactsEffect
//
//  Created by planB on 21/2/17.
//  Copyright © 2017 Ioannis. All rights reserved.
//

import UIKit

class TheObjectCalledContact: NSObject {
    
    
    var nameOfTheContact: String?
    var phoneOfTheContact: String?
    init(nameOfTheContact: String? = nil, phoneOfTheContact: String? = nil) {/* the =nil is required in order to be able to skip a parameter*/
        self.nameOfTheContact = nameOfTheContact
        self.phoneOfTheContact = phoneOfTheContact
        super.init()
    }
    
    
    

}
