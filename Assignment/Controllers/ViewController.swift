//
//  ViewController.swift
//  Assignment
//
//  Created by Kripa on 18/05/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var employeeTableView: UITableView!
    
    private var employeeViewModel : EmployeesViewModel!
    
    private var dataSource : EmployeeTableViewDataSource<EmployeeTableViewCell,EmployeeData>!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        callToViewModelForUIUpdate()
    }
    
    func callToViewModelForUIUpdate(){
        
        self.employeeViewModel =  EmployeesViewModel()
        self.employeeViewModel.bindEmployeeViewModelToController = {
            self.updateDataSource()
        }
    }
    
    func updateDataSource(){
        
        self.dataSource = EmployeeTableViewDataSource(cellIdentifier: "EmployeeTableViewCell", items: self.employeeViewModel.empData.results, configureCell: { (cell, evm) in
            cell.lblEmpName.text = "\(evm.employeeName.firstName) \(evm.employeeName.lastName)"
            cell.lblEmpEmail.text = evm.email
            cell.lblEmpCountry.text = evm.location.country.capitalized
            cell.lblEmpJoiningDate.text = evm.registrationDate.date.convertDate().getElapsedInterval()
            cell.imgViewProfilePic.sd_setImage(with: URL(string: evm.imageData.thumbnail), placeholderImage: nil, options: [.progressiveDownload])
            cell.actionHandler = { (index,empDetail) in
                if index == nil {

                    let empDetailVC = EmployeeDetail()

                    let empDetail = ["name": "\(empDetail?.employeeName.firstName ?? "") \(empDetail?.employeeName.lastName ?? "")", "email": empDetail?.email ?? "", "joining": empDetail?.registrationDate.date.convertDate().getElapsedInterval() ?? "", "dob": empDetail?.ageData.DOB ?? "", "age": empDetail?.ageData.age ?? 0, "city": empDetail?.location.city ?? "", "state": empDetail?.location.state ?? "", "country": empDetail?.location.country ?? "", "postalCode": empDetail?.location.postcode ?? "", "imageURL": empDetail?.imageData.large ?? ""] as [String : Any]
                    empDetailVC.dict_UserData = empDetail
                    self.navigationController?.present(empDetailVC, animated: true)
//
                }
            }
        })
        
        DispatchQueue.main.async {
            self.employeeTableView.dataSource = self.dataSource
            self.employeeTableView.reloadData()
        }
    }
    
}

