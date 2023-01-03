//
//  ViewModel.swift
//  MVVM_Example
//
//  Created by Nikunj Sareriya on 03/01/23.
//

import Foundation

// MARK: - Welcome
struct Employees: Decodable {
    let status: String
    let data: [EmployeeData]
}

// MARK: - Datum
struct EmployeeData: Decodable {
    let id, employeeSalary, employeeAge: Int
    let employeeName: String
    let profileImage: String

    enum CodingKeys: String, CodingKey {
        case id
        case employeeName = "employee_name"
        case employeeSalary = "employee_salary"
        case employeeAge = "employee_age"
        case profileImage = "profile_image"
    }
}
