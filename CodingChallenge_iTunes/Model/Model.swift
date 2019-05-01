//
//  Model.swift
//  CodingChallenge_iTunes
//
//  Created by yan feng on 2019/5/1.
//  Copyright © 2019 Yan feng. All rights reserved.
//

import UIKit
import Alamofire

typealias callBack = (_ callBackArray:[Model]) ->Void
class Model: NSObject {
    var title = String()
    var iconUrl = String()
    var type = String()
}
extension Model{
    static func getData(url:String,callback:@escaping callBack){
        Alamofire.request(url).responseJSON { response in
            response.result.ifSuccess({
                let dic = response.result.value
                var arr = [Model]()
                let array = ((dic as! NSDictionary)["feed"]as!NSDictionary)["results"] as! NSArray
                for i in 0...array.count-1{
                    let eachDic:NSDictionary = array[i] as! NSDictionary
                    let model = Model()
                    model.title = eachDic["name"] as! String
                    model.iconUrl = eachDic["artworkUrl100"] as! String
                    model.type = eachDic["kind"] as! String
                    arr.append(model)
                }
                callback(arr)
            })
        }
        
    }
}
