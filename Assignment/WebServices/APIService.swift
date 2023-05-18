//
//  APIService.swift
//  Assignment
//
//  Created by Kripa on 18/05/23.
//

import Foundation

class APIService :  NSObject {
    
//    private let sourcesURL = URL(string: "http://dummy.restapiexample.com/api/v1/employees")!
    private let sourcesURL = URL(string: "https://randomuser.me/api/?results=100")!
    
    func apiToGetEmployeeData(completion : @escaping (Employees) -> ()){
        
        URLSession.shared.dataTask(with: sourcesURL) { (data, urlResponse, error) in
            if let data = data {
                
                if let empData = try? JSONDecoder().decode(Employees.self, from: data) {
                    completion(empData)
                }
                    
            }
            
        }.resume()
    }
    
}
