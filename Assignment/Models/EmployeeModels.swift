//
//  EmployeeModels.swift
//  Assignment
//
//  Created by Kripa on 18/05/23.
//

import Foundation
import Foundation

// MARK: - Welcome
struct Employees: Decodable {
    let results: [EmployeeData]
}

// MARK: - Datum

struct EmployeeData: Decodable {
    let employeeName: NameData
    let location: LocationData
    let email: String
    let imageData: userImageData
    let registrationDate: RegistrationData
    let ageData: AgeData
    
    enum CodingKeys: String, CodingKey {
        case employeeName = "name"
        case location = "location"
        case email = "email"
        case imageData = "picture"
        case registrationDate = "registered"
        case ageData = "dob"
    }
}

struct NameData: Decodable {
    let title, firstName, lastName: String

    enum CodingKeys: String, CodingKey {
        case title = "title"
        case firstName = "first"
        case lastName = "last"
    }
}

struct LocationData: Decodable {
    let city, state, country, postcode: String

    enum CodingKeys: String, CodingKey {
        case city = "city"
        case state = "state"
        case country = "country"
        case postcode = "postcode"
    }
}

struct AgeData: Decodable {
    let DOB: String
    let age: Int

    enum CodingKeys: String, CodingKey {
        case DOB = "date"
        case age = "age"
    }
}

struct RegistrationData: Decodable {
    let date: String

    enum CodingKeys: String, CodingKey {
        case date = "date"
    }
}

struct userImageData: Decodable {
    let large, medium, thumbnail: String

    enum CodingKeys: String, CodingKey {
        case large = "large"
        case medium = "medium"
        case thumbnail = "thumbnail"
    }
}













//user’s name, email, country, and registration date.
///*
//"info": {
//        "seed": "8381ac8d68cf484d",
//        "results": 100,
//        "page": 1,
//        "version": "1.4"
//    }*/
//struct infoData: Decodable {
//    let seed, version: String
//    let results, page: String
//
//    enum CodingKeys: String, CodingKey {
//        case seed = "seed"
//        case results = "results"
//        case page = "page"
//        case version = "version"
//    }
//}
