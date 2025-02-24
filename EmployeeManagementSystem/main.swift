//
//  main.swift
//  EmployeeManagementSystem
//
//  Created by Mykyta Kaisenberg on 2025-02-21.
//

import Foundation
func menu() {
    let manager = EmployeeManager()
    
    while true {
        print("Enter your choice: ", terminator: " ")
        
        guard let choice = readLine(), let option = Int(choice) else {
            print("Invalid input. Please enter a number between 1 and 6.")
            return
        }
        switch option {
        case 1:
            print("Enter a Full-Time employee ID:", terminator: " ")
            guard let id = readLine(), let inputId = Int(id) else {
                print("No input, must be a number.")
                return
            }
            
            print("Enter employee name:", terminator: " ")
            guard let name = readLine(), !name.isEmpty else {
                print("No input.")
                return
            }
            
            print("Enter monthly salary:", terminator: " ")
            guard let salary = readLine(), let salInput = Double(salary) else {
                print("Invalid salary, must be a number.")
                return
            }
            let employee = FullTimeEmployee(name: name, id: inputId, monthlySalary: salInput)
            manager.addEmployee(employee)
            
        case 2:
            print("Enter a Part-Time employee ID: ", terminator: " ")
            guard let id = readLine(), let inputId = Int(id) else {
                print("No input, must be a number.")
                return
            }
            
            print("Enter employee name:", terminator: " ")
            guard let name = readLine(), !name.isEmpty else {
                print("No input.")
                return
            }
            
            print("Enter hours worked:", terminator: " ")
            guard let hours = readLine(), let hoursIn = Int(hours) else {
                print("No input or invalid. Must be a number.")
                return
            }
            
            print("Enter a hourly rate:", terminator: " ")
            guard let rate = readLine(), let hoursRate = Double(rate) else {
                print("No input or invalid. Must be a number.")
                return
            }
            let employee = PartTimeEmployee(name: name, id: inputId, hourlyRate: hoursRate, hoursWorked: hoursIn)
            manager.addEmployee(employee)
            
        case 3:
            manager.displayAllEmployees()
        
        case 4:
            print("Enter employee Id for removal:", terminator: " ")
            guard let inputId = readLine(), let id = Int(inputId) else {
                print("Invalid input.")
                return
            }
            manager.removeEmployee(byID: id)
            
        case 5:
            print("Enter id of Employee to search: ")
            guard let inputId = readLine(), let id = Int(inputId) else {
                print("Invalid input.")
                return
            }
            manager.searchEmployee(byID: id)
            
        case 6:
            print("Closing program.")
            exit(0)
        default:
            print("Invalid choice. Please enter a number between 1 and 6.")
        }
    }
}
print("=====Employee Management System=====")
print("1. Add Full-Time Employee")
print("2. Add Part-Time Employee")
print("3. Display All Employees")
print("4. Remove Employee by ID")
print("5. Search for and Employee by ID")
print("6. Exit")
print("====================================")
menu()
