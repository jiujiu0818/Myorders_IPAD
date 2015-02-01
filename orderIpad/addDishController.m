//
//  addDishController.m
//  orderIpad
//
//  Created by 金 秋瑞 on 5/21/14.
//  Copyright (c) 2014 Rachel. All rights reserved.
//

#import "addDishController.h"
#import "Menu.h"

@interface addDishController ()

@end

@implementation addDishController

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
		BOOL result = [Menu createWithID:[self.idText text] name:[self.nameText text] price:[self.priceText text] categoryID:[self.categoryText text] intro:[self.introText text]];
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
