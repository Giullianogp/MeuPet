//
//  UserManager.swift
//  MeuPet
//
//  Created by iossenac on 02/12/17.
//  Copyright © 2017 senac. All rights reserved.
//

import UIKit

final class UserManager: NSObject {
    var user: Usuario?
    
    private override init() {
    }
    
    static let shared = UserManager()
}
