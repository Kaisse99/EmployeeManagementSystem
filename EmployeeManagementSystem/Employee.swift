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
    var salary : Double
    
    init(name: String, id: Int, salary: Double) {
        self.name = name
        self.id = id
        self.salary = salary
    }
    
    public func displayDetails() -> String {
        return "\(name) | \(id) | \(salary)"
    }
    
}
