//
//  MainTable.h
//  wojasdb
//
//  Created by michał on 02.04.2015.
//  Copyright (c) 2015 michał. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import "Categories.h"


@interface MainTable : UITableViewController

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) UIImage *uiImage;
@property (nonatomic, strong) NSString *imageLevel;
@property (nonatomic, strong) NSArray *failedBankInfos;

@property (nonatomic, strong) NSArray *failedBankInfos2;
@property (nonatomic, strong) NSArray *failedBankInfos3;
@property (nonatomic, strong) NSManagedObjectContext *managedObjectContext;
@property (nonatomic, strong) NSString *selectedRole;
@property (nonatomic, strong) NSString *level;



@end
