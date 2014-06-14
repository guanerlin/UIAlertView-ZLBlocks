//
//  MasterViewController.h
//  ZLBlockUIAlertView
//
//  Created by lzheng on 14-6-13.
//  Copyright (c) 2014年 lzheng. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <CoreData/CoreData.h>

@interface MasterViewController : UITableViewController <NSFetchedResultsControllerDelegate>

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@end
