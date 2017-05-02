//
//  DataService.swift
//  social-network-clone
//
//  Created by Jing Gao on 2/5/17.
//  Copyright © 2017 Jing Gao. All rights reserved.
//

import Foundation
import Firebase

let DB_BAS = FIRDatabase.database().reference()

class DataService {
    
    static let ds = DataService()
    
    private var _REF_BASE = DB_BAS
    private var _REF_POSTS = DB_BAS.child("posts")
    private var _REF_USERS = DB_BAS.child("users")
    
    var REF_BASE: FIRDatabaseReference {
        return _REF_BASE
    }
    
    var REF_POSTS: FIRDatabaseReference {
        return _REF_POSTS
    }
    
    var REF_USERS: FIRDatabaseReference {
        return _REF_USERS
    }
    
    func createFirbaseDBUser(uid: String, userData: Dictionary<String, String>) {
        REF_USERS.child(uid).updateChildValues(userData)
    }
    
    
    
}
