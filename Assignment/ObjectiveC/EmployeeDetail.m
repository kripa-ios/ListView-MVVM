//
//  EmployeeDetail.m
//  CLUBRMATE
//
//  Created by mac on 9/17/16.
//  Copyright (c) 2016 yd. All rights reserved.
//

#import "EmployeeDetail.h"

#import "UIImageView+UIActivityIndicatorForSDWebImage.h"
#import "UIButton+WebCache.h"


@interface EmployeeDetail ()

@end

@implementation EmployeeDetail


- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
//    self.navigationController.navigationBarHidden = YES;
//    self.navigationController.tabBarController.view.backgroundColor = [UIColor colorWithRed:200.0/255.0 green:206.0/255.0 blue:212.0/255.0 alpha:1.0];
    
    NSLog(@"_dict_UserData : %@",_dict_UserData);
   /*
     "age"*/
    [_imgViewProfile setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",[_dict_UserData valueForKey:@"imageURL"]]] placeholderImage:[UIImage imageNamed:@"user123.png"] usingActivityIndicatorStyle:UIActivityIndicatorViewStyleLarge];
    
   
    _lblName.text = [NSString stringWithFormat:@"%@",[_dict_UserData valueForKey:@"name"]];
    _lblEmail.text = [NSString stringWithFormat:@"%@",[_dict_UserData valueForKey:@"email"]];
    _lblRegDate.text = [NSString stringWithFormat:@"%@",[_dict_UserData valueForKey:@"joining"]];
    _lblDOB.text = [NSString stringWithFormat:@"%@",[_dict_UserData valueForKey:@"dob"]];
    _lblCity.text = [NSString stringWithFormat:@"$%@",[_dict_UserData valueForKey:@"city"]];
    _lblState.text = [NSString stringWithFormat:@"$%@",[_dict_UserData valueForKey:@"state"]];
    _lblCountry.text = [NSString stringWithFormat:@"$%@",[_dict_UserData valueForKey:@"country"]];
    _lblPostalCode.text = [NSString stringWithFormat:@"$%@",[_dict_UserData valueForKey:@"postalCode"]];
    _lblAge.text = [NSString stringWithFormat:@"$%@",[_dict_UserData valueForKey:@"age"]];
    
    // Do any additional setup after loading the view from its nib.
}
- (void)viewWillAppear:(BOOL)animated
{
    
}


- (IBAction)BackToPrevious:(id)sender
{
//    [self.navigationController popViewControllerAnimated:YES];
    [self.navigationController dismissViewControllerAnimated:true completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end






















//"name"
// "email"
// "joining"
// "dob"
// "age"
// "city"
// "state"
// "country"
// "postalCode"
// "imageURL"
