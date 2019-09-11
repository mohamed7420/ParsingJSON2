//
//  User.swift
//  ParsingJSON2
//
//  Created by Mohamed on 9/11/19.
//  Copyright © 2019 Mohamed74. All rights reserved.
//

import Foundation

struct Users : Decodable{
    
    var id:Int
    var name:String
    var username:String
    var phone:String
    let address:Address
    let company:Company
}

struct Address : Decodable {
    
    var street:String
    var suite:String
    let geo:Geo
}

struct Company:Decodable {
    
    var name:String
    var catchPhrase:String
    var bs:String
    
    
}

struct Geo:Decodable {
    
    var lat:String
    var lng:String
  
}


