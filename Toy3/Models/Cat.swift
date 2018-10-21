//
//  Cat.swift
//  Toy3
//
//  Created by Shuyan Li on 2018/10/20.
//  Copyright © 2018年 Shuyan Li. All rights reserved.
//

import UIKit

class Cat: NSObject {
    struct CatCellInfo {
        let name : String!
        let image : UIImage!
        let age : Int!
        let type : String!
    }
    
    static var count : Int = 0
    static var catArr = [CatCellInfo]()
    
    class func addCat(name : String!, age: Int!, image: UIImage, type:
        String!) -> Void {
        catArr.append(CatCellInfo(name: name, image: image, age: age, type: type))
        count += 1
    }
}
