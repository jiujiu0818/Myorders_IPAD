//
//  addMapController.m
//  orderIpad
//
//  Created by 金 秋瑞 on 5/22/14.
//  Copyright (c) 2014 Rachel. All rights reserved.
//

#import "addMapController.h"
#import "dbMap.h"

@interface addMapController ()

@end

@implementation addMapController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)doCreate:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:@"确定创建？" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:@"取消",nil];
    [alert show];
}
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
	
	if (buttonIndex == 0) {
		BOOL result = [dbMap createWithID:[self.idText text] name:[self.nameText text] latitude:[self.latitudeText text] longtitude:[self.longtitudeText text] address:[self.addressText text] status:[self.statusText text] open24:[self.open24Text text] phone:[self.phoneText text] features:[self.featuresText text] storeID:[self.storeText text]];
		if (result) {
			[self dismissViewControllerAnimated:YES
                                     completion:^(void){
                                         
                                     }];
		}
		else {
			NSLog(@"We meet an error, code:%d", result);
		}
	}
	else {
		NSLog(@"you have cancled the new book");
	}
}
@end
