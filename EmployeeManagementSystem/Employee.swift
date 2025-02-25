//
//  Employee.swift
//  EmployeeManagementSystem
//
//  Created by Mykyta Kaisenberg on 2025-02-21.
//

import Foundation
class Employee {
    var name : String
    var id : Int
    var salary : Double {
        return 0.0
    }
    
    init(name: String, id: Int) {
        self.name = name
        self.id = id
    }
    
     func displayDetails(){
        print("\(name) | \(id) | \(salary)")
    }
    
}
