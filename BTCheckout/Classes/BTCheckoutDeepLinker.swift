//
//  BTCheckoutDeepLinker.swift
//  BTCheckout
//
//  Created by jason smellz on 5/19/18.
//

import UIKit

public func BTDeepLinkTicket<T>(_ ticketObject:T) -> () {
    
    let urlScheme = "bartab://"
    let deepUrl = objectToQueryString(urlScheme,ticketObject)
    return openURL(deepUrl)
    
}

func openURL(_ url: URL) {
    
    if UIApplication.shared.canOpenURL(url) {
        //            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        //If you want handle the completion block than
        UIApplication.shared.open(url, options: [:], completionHandler: { (success) in
            print("Open url : \(success)")
        })
    }
}

func objectToQueryString<T>(_ scheme:String,_ object:T) -> URL{
    
    let mirror = Mirror(reflecting: object)
    var queryString: String = ""
    
    for child in mirror.children {
        // MARK: query stringify array of objects
        if let itemArray = child.value as? [Any] {
            let objectArrayString = arrayToQueryString(itemArray)
            queryString += "\(child.label!)=[\(objectArrayString)]"
         
            
        // MARK: query stringify elements of objects
        } else {
            
            queryString +=  "\(child.label!)=\(child.value)&"
        }
    }
    
    queryString = String(queryString.dropLast())
    let final = queryString.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)
    let url = URL(string: scheme + "?" + final!)!
    print(url)
    return url
}

func arrayToQueryString(_ array:[Any]) -> String{
    
    var queryString:String = ""
    
    for item in array {
        
        let itemMirror = Mirror(reflecting: item)
        
        for itemChild in itemMirror.children {
            
            if let val = itemChild.value as? String {
                queryString += "\(itemChild.label!)=\(val)&"
            }
        }
    }
    return queryString
}
