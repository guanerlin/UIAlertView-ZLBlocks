//
//  DetailViewController.h
//  ZLBlockUIAlertView
//
//  Created by lzheng on 14-6-13.
//  Copyright (c) 2014年 lzheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController<UIAlertViewDelegate>

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UIButton *testButton;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
- (IBAction)clickedButton:(id)sender;
@end
