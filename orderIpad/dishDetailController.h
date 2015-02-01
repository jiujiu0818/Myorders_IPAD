//
//  dishDetailController.h
//  OrederManagementNew
//
//  Created by 金 秋瑞 on 5/21/14.
//  Copyright (c) 2014 Rachel. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Menu.h"

@interface dishDetailController : UIViewController

@property (nonatomic,strong) Menu *myDish;

@property (weak, nonatomic) IBOutlet UITextField *nameText;
@property (weak, nonatomic) IBOutlet UITextField *priceText;
@property (weak, nonatomic) IBOutlet UITextField *introText;
- (IBAction)doUpdate:(id)sender;

@end
