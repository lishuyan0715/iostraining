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
    
    class func loadCats(completion : @escaping (Array<Dictionary<String,String>>) -> Void) -> Void {
        let url = URL(string: "http://www.chenziwe.com/cats")
        let session = URLSession(configuration:  .default)
        var request = URLRequest(url: url!)
        request.httpMethod = "GET"
        let task = session.dataTask(with: request){ (data, URLResponse, error)
            in
            if (error != nil){
                print("Failed to load cats!")
                return
            }
            print("Got out cats!")
            let result = try? JSONSerialization.jsonObject(with: data!, options: []) as! Array<Dictionary<String,String>>
            completion(result!)
            
        }
        
        task.resume()
        
        
    }
}
