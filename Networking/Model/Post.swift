//
//  Post.swift
//  Networking
//
//  Created by A'zamjon Abdumuxtorov on 04/01/24.
//

import Foundation

struct Post: Decodable{
    
    var userId: Int?
    var id: Int?
    var title: String?
    var body: String?
    
    init(){
        
    }
    
    init(title:String,body:String)  {
        
        self.userId = 1
        self.id = 1
        self.title = title
        self.body = body
    }
}
