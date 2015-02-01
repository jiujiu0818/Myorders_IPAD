//
//  dishesController.h
//  orderIpad
//
//  Created by 金 秋瑞 on 6/2/14.
//  Copyright (c) 2014 Rachel. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <RestKit/RestKit.h>

@interface dishesController : UITableViewController
@property (strong,nonatomic) NSArray *items;

-(void)finishedLoadingWithItems:(NSArray *)items;
@end
