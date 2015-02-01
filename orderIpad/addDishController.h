//
//  addDishController.h
//  orderIpad
//
//  Created by 金 秋瑞 on 5/21/14.
//  Copyright (c) 2014 Rachel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface addDishController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *idText;
@property (weak, nonatomic) IBOutlet UITextField *nameText;
@property (weak, nonatomic) IBOutlet UITextField *priceText;
@property (weak, nonatomic) IBOutlet UITextField *categoryText;
@property (weak, nonatomic) IBOutlet UITextField *introText;
- (IBAction)doCreate:(id)sender;

@end
