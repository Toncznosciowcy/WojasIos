//
//  CategoriesCollectionViewController.h
//  wojasdb
//
//  Created by Michał Świerczek on 31.05.2015.
//  Copyright (c) 2015 michał. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

@interface CategoriesCollectionViewController : UICollectionViewController
@property(nonatomic, strong) NSArray *dataArray;
@property(nonatomic, strong) NSString *receive;
@property (nonatomic, strong) NSManagedObjectContext *managedObjectContext;
@property (nonatomic, strong) NSArray *arrayFetch;
@property (nonatomic, strong) NSArray *arrayFetchColor;
@property (nonatomic, strong) NSString *recipeImageName;
@end
