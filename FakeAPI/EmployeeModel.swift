//
//  EmployeeModel.swift
//  FakeAPI
//
//  Created by user on 04/06/2023.
//

import Foundation
import SwiftUI


struct Employee: Codable {
    var body: String
    var id: Int
    var title: String
    var userId : Int
}

//struct Response: Codable {
//    var employee: [Employee]
//}
