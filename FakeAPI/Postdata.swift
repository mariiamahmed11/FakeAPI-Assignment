//
//  Postdata.swift
//  FakeAPI
//
//  Created by user on 04/06/2023.
//

import Foundation
import SwiftUI

    func makePOSTRequest() {
    
    @EnvironmentObject var values:Newvalues
    
    guard let url = URL(string: "https://jsonplaceholder.typicode.com/users") else {
        return
    }
    
    print ("Making api call...")
    
    var request = URLRequest (url: url)
    
    // method, body, headers
    request.httpMethod = "POST"
    request.setValue("application/json", forHTTPHeaderField: "Content-Type")
    
    let body: [String: AnyHashable] = [
        "userld": Int(values.postUserId),
        "title": values.postTitle,
        "body": values.postBody ,
    ]
            
    request.httpBody = try? JSONSerialization.data(withJSONObject: body, options: .fragmentsAllowed)
    
    //Make the request
    let task = URLSession.shared.dataTask(with: request) { data,_,error in
        guard let data = data, error == nil else {
            return
        }
        
        do {
            let responseEmpolyess = try JSONDecoder().decode(Employee.self,from: data)
            print ("SUCCESS:\(responseEmpolyess)")
        }
        
        catch {
            print("error")
        }
        
    }
    task.resume()
 
}

//makePOSTRequest()
