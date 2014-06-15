//
//  DetailViewController.m
//  ZLBlockUIAlertView
//
//  Created by lzheng on 14-6-13.
//  Copyright (c) 2014年 lzheng. All rights reserved.
//

#import "DetailViewController.h"
#import "UIAlertView+ZLBlocks.h"
@interface DetailViewController ()
- (void)configureView;
@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.

    if (self.detailItem) {
        self.detailDescriptionLabel.text = [[self.detailItem valueForKey:@"timeStamp"] description];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clickedButton:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil message:@"hello runtime" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:@"Other button",nil];
    alert.alertViewClickedButtonAtIndexBlock = ^(UIAlertView *alert ,NSUInteger index) {
        NSLog(@"alert view block called successfully!!!");
    };
    
    [alert show];
}

- (void)willPresentAlertView:(UIAlertView *)alertView {
    NSLog(@"delegate method called!");
}




@end
