//
//  AppDelegate.h
//  wojasdb
//
//  Created by michał on 02.04.2015.
//  Copyright (c) 2015 michał. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import "MainTable.h"


//@interface AppDelegate : UIResponder <UIApplicationDelegate>

//+ (instancetype)defaultStack;



@interface AppDelegate : NSObject
{
    UIWindow *window;
    UITabBarController *tabBarController;
    
    MainTable *mainTable;
  //  ShowDestinationsViewController *showDestinationsViewController;
   // SearchDestinationsViewController *searchDestinationsViewController;
}





@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) UIImage *uiImage;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;
//@property (strong, nonatomic) NSArray *fetchedObjects1;


@property (strong, nonatomic) NSArray *test;
- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;


@end

