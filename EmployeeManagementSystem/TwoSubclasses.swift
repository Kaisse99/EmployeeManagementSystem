//
//  TwoSubclasses.swift
//  EmployeeManagementSystem
//
//  Created by Mykyta Kaisenberg on 2025-02-21.
//
import Foundation;

class FullTimeEmployee : Employee, Taxable {
    var monthlySalary : Double
    
    init(name : String, id : Int, monthlySalary : Double) {
        self.monthlySalary = monthlySalary
        super.init(name: name, id: id)
    }
    
    override var salary: Double {
            return monthlySalary
        }
    
    func calculateTax() -> Double {
        return salary * 0.20
    }
    override func displayDetails() {
            let tax = calculateTax()
            print("\(name) | \(id) | Salary: \(salary) | Tax: \(tax)")
        }
    
}

class PartTimeEmployee : Employee, Taxable  {
    var hourlyRate : Double
    var hoursWorked : Int
    init(name: String, id: Int, hourlyRate: Double, hoursWorked: Int) {
        self.hourlyRate = hourlyRate
        self.hoursWorked = hoursWorked
        super.init(name: name, id: id)
    }
    
    override var salary: Double {
            return hourlyRate * Double(hoursWorked)
    }
    
    func calculateTax() -> Double {
        return salary * 0.10
    }
    
    override func displayDetails() {
            let tax = calculateTax()
            print("\(name) | \(id) | Salary: \(salary) | Tax: \(tax)")
        }

    
}
