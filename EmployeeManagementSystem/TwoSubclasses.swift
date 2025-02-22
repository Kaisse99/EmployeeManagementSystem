//
//  TwoSubclasses.swift
//  EmployeeManagementSystem
//
//  Created by Mykyta Kaisenberg on 2025-02-21.
//
import Foundation;

class FullTimeEmployee : Employee {
    var monthlySalary : Double;
    
    init(name : String, id : Int, monthlySalary : Double) {
        self.monthlySalary = monthlySalary
        super.init(name: name, id: id)
    }
    
    override var salary: Double {
            return monthlySalary
        }
    
}

class PartTimeEmployee : Employee {
    
    
}
