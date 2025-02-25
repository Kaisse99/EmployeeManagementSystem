//
//  EmployeeManager.swift
//  EmployeeManagementSystem
//
//  Created by Mykyta Kaisenberg on 2025-02-21.
//
import Foundation
class EmployeeManager {
    private var employees: [Int: Employee] = [:]
    
    func addEmployee(_ employee: Employee) {
        employees[employee.id] = employee
        print("\(employee.name) (ID: \(employee.id)) added successfully.")
    }
    
    func removeEmployee(byID id: Int){
        if let removing = employees.removeValue(forKey: id) {
            print("\(removing.name) (ID: \(id)) removed successfully.")
        } else {
            print("Employee with ID \(id) not found.")
        }
    }
    
    func displayAllEmployees(){
        if employees.isEmpty {
            print("No employees in the list.")
            return }
        
        print("=====Employee List=====")
        for (_, employee) in employees {
        employee.displayDetails()
        }
        print("=====================")
    }
    
    func searchEmployee(byID id: Int) {
        guard let employee = employees[id] else {
            print("Employee with ID \(id) not found.")
            return
        }
        print("Employee found: ")
        employee.displayDetails()
    }
    
    
}

