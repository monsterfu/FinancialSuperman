//
//  MainViewController.h
//  SmartHomeRemoteControl
//
//  Created by Monster on 14-7-7.
//  Copyright (c) 2014年 Monster. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "common.h"


@protocol MainViewControllerDelegate <NSObject>
-(void)showLeftViewController;
@end

@interface MainViewController : UIViewController

@property(nonatomic, assign)id<MainViewControllerDelegate>delegate;


@property (weak, nonatomic) IBOutlet UILabel *testLabel;
- (IBAction)testButtonTouch:(UIButton *)sender;

@end
