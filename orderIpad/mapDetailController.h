//
//  mapDetailController.h
//  orderIpad
//
//  Created by 金 秋瑞 on 5/22/14.
//  Copyright (c) 2014 Rachel. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "dbMap.h"

@interface mapDetailController : UIViewController

@property (strong,nonatomic) dbMap *myMap;
@property (weak, nonatomic) IBOutlet UITextField *nameText;
@property (weak, nonatomic) IBOutlet UITextField *statusText;
@property (weak, nonatomic) IBOutlet UITextField *open24Text;
@property (weak, nonatomic) IBOutlet UITextField *phoneText;
@property (weak, nonatomic) IBOutlet UITextField *storeText;
@property (weak, nonatomic) IBOutlet UITextField *addressText;
@property (weak, nonatomic) IBOutlet UITextField *featuresText;
- (IBAction)doUpdate:(id)sender;
@end
