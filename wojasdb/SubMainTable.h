//
//  SubMainTable.h
//  wojasdb
//
//  Created by michał on 27.04.2015.
//  Copyright (c) 2015 michał. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SubCategoriesCell.h"
#import "Categories.h"
#import "SubCategoriesCell.h"
#import "AppDelegate.h"
#import <CoreData/CoreData.h>
#import "SubCategories.h"

@class SubMainTable;
@protocol SubMainTableDelegate <NSObject>
- (void)theSaveButtonOnTheRoleDetailTVCWasTapped:(SubMainTable *)controller;
@end

@interface SubMainTable : UITableViewController
@property (nonatomic, weak) id <SubMainTableDelegate> delegate;
@property (nonatomic, strong) NSString *fetchSubName;
@property (strong, nonatomic) NSString *role;
@property (strong, nonatomic) NSString *titleBar;

@property (nonatomic, strong) NSArray *subTableArray;
@property (nonatomic, strong) NSManagedObjectContext *managedObjectContext2;

@end






