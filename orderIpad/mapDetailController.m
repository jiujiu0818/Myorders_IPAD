//
//  mapDetailController.m
//  orderIpad
//
//  Created by 金 秋瑞 on 5/22/14.
//  Copyright (c) 2014 Rachel. All rights reserved.
//

#import "mapDetailController.h"

@interface mapDetailController ()

@end

@implementation mapDetailController

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
    self.nameText.text = [self.myMap name];
    self.statusText.text = [self.myMap status];
    self.open24Text.text = [self.myMap open24];
    self.addressText.text = [self.myMap address];
    self.featuresText.text = [self.myMap features];
    self.phoneText.text = [self.myMap phone];
    self.storeText.text = [self.myMap storeID];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)doUpdate:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:@"确定更新？" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:@"取消",nil];
    [alert show];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
	
	/*if (buttonIndex == 0) {
		BOOL result =[dbMap update:[self.myMap ID] withName:self.nameText.text address:self.addressText.text status:self.statusText.text open24:self.open24Text.text phone:self.phoneText.text features: self.featuresText.text storeID:self.storeText.text];
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
	}*/
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

@end
