//
//  MainViewController.m
//  SmartHomeRemoteControl
//
//  Created by Monster on 14-7-7.
//  Copyright (c) 2014年 Monster. All rights reserved.
//

#import "MainViewController.h"
#import "AppDelegate.h"

@interface MainViewController ()

@end

@implementation MainViewController

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
    UIBarButtonItem* barItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(leftButtonTouched)];
    self.navigationItem.leftBarButtonItem = barItem;
    
    
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

- (IBAction)testButtonTouch:(UIButton *)sender {
    
//    [self.revealController showViewController:leftViewController];
}

-(void)leftButtonTouched
{
    if (self.delegate&&[self.delegate respondsToSelector:@selector(showLeftViewController)]) {
        [self.delegate showLeftViewController];
    }
}
@end
