//
//  EmployeeDetail.h
//  CLUBRMATE
//
//  Created by mac on 9/17/16.
//  Copyright (c) 2016 yd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EmployeeDetail : UIViewController


@property (weak, nonatomic) IBOutlet UIButton *btnBack;

@property (weak, nonatomic) IBOutlet UIImageView *imgViewProfile;

@property (weak, nonatomic) IBOutlet UILabel *lblName;
@property (weak, nonatomic) IBOutlet UILabel *lblEmail;
@property (weak, nonatomic) IBOutlet UILabel *lblCountry;
@property (weak, nonatomic) IBOutlet UILabel *lblRegDate;
@property (weak, nonatomic) IBOutlet UILabel *lblCity;
@property (weak, nonatomic) IBOutlet UILabel *lblState;
@property (weak, nonatomic) IBOutlet UILabel *lblPostalCode;
@property (weak, nonatomic) IBOutlet UILabel *lblDOB;
@property (weak, nonatomic) IBOutlet UILabel *lblAge;


@property NSDictionary *dict_UserData;

@end
