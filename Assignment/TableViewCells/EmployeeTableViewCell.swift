//
//  EmployeeTableViewCell.swift
//  Assignment
//
//  Created by Kripa on 18/05/23.
//

import UIKit

class EmployeeTableViewCell: UITableViewCell {
    
    @IBOutlet weak var lblEmpName: UILabel!
    @IBOutlet weak var lblEmpEmail: UILabel!
    @IBOutlet weak var lblEmpCountry: UILabel!
    @IBOutlet weak var lblEmpJoiningDate: UILabel!
    @IBOutlet weak var imgViewProfilePic: UIImageView!
    var actionHandler : ((IndexPath?,EmployeeData?) -> Void)?
    
    var employee : EmployeeData? {
        didSet {
            lblEmpEmail.text = employee?.email
            lblEmpName.text = "\(employee?.employeeName.firstName ?? "-") \(employee?.employeeName.lastName ?? "-")"
            lblEmpCountry.text = employee?.location.country
            lblEmpJoiningDate.text = employee?.registrationDate.date
            imgViewProfilePic.sd_setImage(with: URL(string: employee?.imageData.thumbnail ?? ""), placeholderImage: nil, options: [.progressiveDownload])
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension EmployeeTableViewCell: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Employee at index : \(indexPath.row) is clicked")
        self.actionHandler?(indexPath,self.employee)
        
    }
}
