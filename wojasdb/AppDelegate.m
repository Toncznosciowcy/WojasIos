//
//  AppDelegate.m
//  wojasdb
//
//  Created by michał on 02.04.2015.
//  Copyright (c) 2015 michał. All rights reserved.
//

#import "AppDelegate.h"
#import "Categories.h"
#import "MainTable.h"
#import "SubMainTable.h"
#import "ViewController.h"
#import "SubCategories.h"
#import "Products.h"

#import "ColorInfo.h"
#import "ContactView.h"




@interface AppDelegate ()

@end

@implementation AppDelegate
/*
+ (instancetype)defaultStack {
    static AppDelegate *defaultStack;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        defaultStack = [[self alloc] init];
    });
    
    return defaultStack;
}
*/
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    //***Wpisanie nowego rekordu do bazy***
   
    
  
   
    NSManagedObjectContext *context = [self managedObjectContext];
    NSError *error;

    
    
    //----------MEN----------
  
    Categories *man = [NSEntityDescription
                                      insertNewObjectForEntityForName:@"Categories"
                                      inManagedObjectContext:context];
    
    
    
   // NSMutableSet *products =[NSMutableSet set];
    man.catName = @"ON";
    man.catLevel = @"Main1";
    man.imageCat = @"man_category.jpg";
    
    
    SubCategories *subCategoriesin = [ NSEntityDescription
                                    insertNewObjectForEntityForName:@"SubCategories"
                                    inManagedObjectContext:context];
    subCategoriesin.nameSubCategories = @"Botki";
    subCategoriesin.imageSubCategories = @"botki.png";
  //  subCategoriesin.joinSubCategories = man;
    [man addJoinCategoriesObject:subCategoriesin];
    
    
    Products * products =[ NSEntityDescription
                          insertNewObjectForEntityForName:@"Products"
                          inManagedObjectContext:context];

    products.nameProduct = @"Reebok";
    products.imageProduct =@"sweter_woman.jpg";
    products.priceProduct = [NSNumber numberWithFloat:12.23];
    products.joinProductSC = subCategoriesin;
    //subCategoriesin.joinP = products;
    
    
    ColorInfo *colorInfo = [ NSEntityDescription
                           insertNewObjectForEntityForName:@"ColorInfo"
                           inManagedObjectContext:context];
    colorInfo.colorName = @"green.jpg";
    colorInfo.imageCP = @" zieloneBotki";
    //colorInfo.joinProducts= products;
    [products addJoinColorProductsObject:colorInfo];
    
    ColorInfo *colorInfo2 = [ NSEntityDescription
                            insertNewObjectForEntityForName:@"ColorInfo"
                            inManagedObjectContext:context];
    colorInfo2.colorName = @"black.jpg";
    colorInfo2.imageCP = @"  czarneBotki";
    //colorInfo2.joinProducts= products;
    [products addJoinColorProductsObject:colorInfo2];
    
    
    Products * products1 =[ NSEntityDescription
                          insertNewObjectForEntityForName:@"Products"
                          inManagedObjectContext:context];
    
    products1.nameProduct = @"Nike";
    products1.imageProduct =@"buty_woman.jpg";
    products1.priceProduct = [NSNumber numberWithFloat:82.23];
    products1.joinProductSC = subCategoriesin;
    //subCategoriesin.joinP = products;
    
    ColorInfo *colorInfo3 = [ NSEntityDescription
                            insertNewObjectForEntityForName:@"ColorInfo"
                            inManagedObjectContext:context];
    colorInfo3.colorName = @"green.jpg";
    colorInfo3.imageCP = @" zieloneNike";
    //colorInfo.joinProducts= products;
    [products1 addJoinColorProductsObject:colorInfo3];
    
    ColorInfo *colorInfo4 = [ NSEntityDescription
                             insertNewObjectForEntityForName:@"ColorInfo"
                             inManagedObjectContext:context];
    colorInfo4.colorName = @"black.jpg";
    colorInfo4.imageCP = @"  czarneNike";
    //colorInfo2.joinProducts= products;
    [products1 addJoinColorProductsObject:colorInfo4];
    
    
    
    
    Products * products2 =[ NSEntityDescription
                          insertNewObjectForEntityForName:@"Products"
                          inManagedObjectContext:context];
    
    products2.nameProduct = @"Adasie";
    products2.imageProduct =@"kurtka_man.jpg";
    products2.priceProduct = [NSNumber numberWithFloat:92.93];
    products2.joinProductSC = subCategoriesin;
    //subCategoriesin.joinP = products;
    
    Products * products3 =[ NSEntityDescription
                          insertNewObjectForEntityForName:@"Products"
                          inManagedObjectContext:context];
    
    products3.nameProduct = @"Rylko";
    products3.imageProduct =@"buty_woman.jpg";
    products3.priceProduct = [NSNumber numberWithFloat:22.23];
    products3.joinProductSC = subCategoriesin;
    //subCategoriesin.joinP = products;
    
    
    
    
    //man.joinCategories = subCategoriesin;
    
    SubCategories *subCategoriesin1 = [ NSEntityDescription
                                      insertNewObjectForEntityForName:@"SubCategories"
                                      inManagedObjectContext:context];
    subCategoriesin1.nameSubCategories = @"Trzewiki";
    subCategoriesin1.imageSubCategories = @"trzewiki.png";
   // subCategoriesin1.joinSubCategories = man;
    [man addJoinCategoriesObject:subCategoriesin1];
    //man.joinCategories = subCategoriesin1;
    
    Products * products4 =[ NSEntityDescription
                          insertNewObjectForEntityForName:@"Products"
                          inManagedObjectContext:context];
    
    products4.nameProduct = @"Trzewik1";
    products4.imageProduct =@"man_category.jpg";
    products4.priceProduct = [NSNumber numberWithFloat:12.23];
    products4.joinProductSC = subCategoriesin1;
    //subCategoriesin.joinP = products;
    
    Products * products5 =[ NSEntityDescription
                           insertNewObjectForEntityForName:@"Products"
                           inManagedObjectContext:context];
    
    products5.nameProduct = @"Trzewik2";
    products5.imageProduct =@"man_category.jpg";
    products5.priceProduct = [NSNumber numberWithFloat:82.23];
    products5.joinProductSC = subCategoriesin1;
    //subCategoriesin.joinP = products;
    
    Products * products6 =[ NSEntityDescription
                           insertNewObjectForEntityForName:@"Products"
                           inManagedObjectContext:context];
    
    products6.nameProduct = @"Trzewik3";
    products6.imageProduct =@"man_category.jpg";
    products6.priceProduct = [NSNumber numberWithFloat:92.93];
    products6.joinProductSC = subCategoriesin1;
    //subCategoriesin.joinP = products;
    
    Products * products7 =[ NSEntityDescription
                           insertNewObjectForEntityForName:@"Products"
                           inManagedObjectContext:context];
    
    products7.nameProduct = @"Trzewik4";
    products7.imageProduct =@"man_category.jpg";
    products7.priceProduct = [NSNumber numberWithFloat:22.23];
    products7.joinProductSC = subCategoriesin1;
    //subCategoriesin.joinP = products;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    SubCategories *subCategoriesin2 = [ NSEntityDescription
                                       insertNewObjectForEntityForName:@"SubCategories"
                                       inManagedObjectContext:context];
    subCategoriesin2.nameSubCategories = @"Polbuty";
    subCategoriesin2.imageSubCategories = @"polbuty.png";
    // subCategoriesin1.joinSubCategories = man;
    [man addJoinCategoriesObject:subCategoriesin2];
    
    SubCategories *subCategoriesin3 = [ NSEntityDescription
                                       insertNewObjectForEntityForName:@"SubCategories"
                                       inManagedObjectContext:context];
    subCategoriesin3.nameSubCategories = @"Trekking";
    subCategoriesin3.imageSubCategories = @"trekking.png";
    // subCategoriesin1.joinSubCategories = man;
    [man addJoinCategoriesObject:subCategoriesin3];

    /*
    SubCategories *subCategoriesin2 = [ NSEntityDescription
                                      insertNewObjectForEntityForName:@"SubCategories"
                                      inManagedObjectContext:context];
    subCategoriesin2.nameSubCategories = @"Swetry";
    subCategoriesin2.imageSubCategories = @"sweter_man.jpg";
    subCategoriesin2.joinSubCategories = man;
    //man.joinCategories = subCategoriesin2;
    */
   
    
   //---------WOMAN-----------
    /*
     
     Categories *woman = [NSEntityDescription
     insertNewObjectForEntityForName:@"Categories"
     inManagedObjectContext:context];
     
     
     
     // NSMutableSet *products =[NSMutableSet set];
     woman.catName = @"ONA";
     woman.catLevel = @"Main2";
     woman.imageCat = @"woman_category.jpg";
     
     
     SubCategories *subCategoriesin4 = [ NSEntityDescription
                                        insertNewObjectForEntityForName:@"SubCategories"
                                        inManagedObjectContext:context];
     subCategoriesin4.nameSubCategories = @"Baleriny";
     subCategoriesin4.imageSubCategories = @"baleriny.png";
     //  subCategoriesin.joinSubCategories = man;
     [woman addJoinCategoriesObject:subCategoriesin4];
     
        
    SubCategories *subCategoriesin5 = [ NSEntityDescription
                                       insertNewObjectForEntityForName:@"SubCategories"
                                       inManagedObjectContext:context];
    subCategoriesin5.nameSubCategories = @"Czolenka";
    subCategoriesin5.imageSubCategories = @"czolenka.png";
    //  subCategoriesin.joinSubCategories = man;
    [woman addJoinCategoriesObject:subCategoriesin5];
    
    SubCategories *subCategoriesin6 = [ NSEntityDescription
                                       insertNewObjectForEntityForName:@"SubCategories"
                                       inManagedObjectContext:context];
    subCategoriesin6.nameSubCategories = @"Kozaki";
    subCategoriesin6.imageSubCategories = @"kozaki.png";
    //  subCategoriesin.joinSubCategories = man;
    [woman addJoinCategoriesObject:subCategoriesin6];
    
    SubCategories *subCategoriesin7 = [ NSEntityDescription
                                       insertNewObjectForEntityForName:@"SubCategories"
                                       inManagedObjectContext:context];
    subCategoriesin7.nameSubCategories = @"Lordsy";
    subCategoriesin7.imageSubCategories = @"lordsy.png";
    //  subCategoriesin.joinSubCategories = man;
    [woman addJoinCategoriesObject:subCategoriesin7];
     */
     /*
     
     Categories *woman = [NSEntityDescription
     insertNewObjectForEntityForName:@"Categories"
     inManagedObjectContext:context];
     
     woman.catName = @"ONA";
     woman.catLevel = @"Main7";
     woman.imageCat = @"woman_category.jpg";
     SubCategories *subCategoriesinWoman = [ NSEntityDescription
                                            insertNewObjectForEntityForName:@"SubCategories"
                                            inManagedObjectContext:context];
     subCategoriesinWoman.nameSubCategories = @"Buty";
     subCategoriesinWoman.imageSubCategories = @"buty_woman.jpg";
    
     subCategoriesinWoman.nameSubCategories = @"Kurtki";
     subCategoriesinWoman.imageSubCategories = @"kurtka_woman.jpg";
    
     subCategoriesinWoman.nameSubCategories = @"Swetry";
     subCategoriesinWoman.imageSubCategories = @"sweter_woman.jpg";
    
     subCategoriesinWoman.joinSubCategories = woman;
     woman.joinCategories = subCategoriesinWoman;
     
   */


    /*
    NSURL *url = [NSURL URLWithString:@"/Users/michal/Desktop/Zdjęcia tel/IMG_3502.JPG"];
    
    NSData *data = [[NSData alloc] initWithContentsOfURL:url];
    
    _uiImage= [UIImage imageWithData:data];
    
    NSData *imageData1 = UIImagePNGRepresentation(_uiImage);
    failedBankInfo.imageCat = imageData1;
   // [failedBankInfo setValue:imageData forKey:@"imageCat"];
    */
    /*

    @try{
        
        if (_managedObjectContext != nil) {
            
            if (![_managedObjectContext  save:&error]) {
                
                NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
                
                NSString * infoString = [NSString stringWithFormat:@"Please check your connection and try again."];
                
                UIAlertView * infoAlert = [[UIAlertView alloc] initWithTitle:@"Database Connection Error" message:infoString delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
                
                [infoAlert show];
                
            } 
        }

    }@catch (NSException *exception) {
        
        NSLog(@"inside exception");
    }
   
    
    
    if (![context save:&error]) {
          NSLog(@"Whoops, couldn't save: %@", [error localizedDescription]);
    }
   */ 
    // Test listing all FailedBankInfos from the store
 /*
  NSEntityDescription *entity = [NSEntityDescription entityForName:@"Categories"
                                              inManagedObjectContext:context];
    [fetchRequest setEntity:entity];
  NSArray *fetchedObjects = [context executeFetchRequest:fetchRequest error:&error];
    for (Categories *info in fetchedObjects) {
          NSLog(@"Name: %@", info.catName);
    }
    NSPredicate  *predicate = [NSPredicate predicateWithFormat:@"(catLevel LIKE[c] 'Main5')"];
    [fetchRequest setPredicate:predicate];
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc]
                                        initWithKey:@"catName" ascending:YES];
    [fetchRequest setSortDescriptors:@[sortDescriptor]];
    _fetchedObjects1 = [ context executeFetchRequest:fetchRequest error:&error];
    for (Categories *info in _fetchedObjects1) {
        NSLog(@"Name: %@", info.catName);
   
    }
    */
   /*
  if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad) {
      
      UISplitViewController *splitViewController = (UISplitViewController *)self.window.rootViewController;
      UINavigationController *navigationController1 = [splitViewController.viewControllers lastObject];
      splitViewController.delegate = (id)navigationController1.topViewController;
      
      UINavigationController *navigationController = (UINavigationController *)self.window.rootViewController;
      MainTable *controller = (MainTable *)navigationController.topViewController;
      controller.managedObjectContext = self.managedObjectContext;
  } else {
     // UINavigationController *navigationController = (UINavigationController *)self.window.rootViewController;
    //SubMainTable *controller2 = (SubMainTable *)navigationController.topViewController;
     // controller2.managedObjectContext2 = self.managedObjectContext;
  }
*/
  //  UINavigationController *navigationController = (UINavigationController *)self.window.rootViewController;
    //MainView *controller = (MainView *)navigationController.topViewController;
    //controller.managedObjectContext = self.managedObjectContext;
    
    /*
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    // Create the two view controllers
    
    //Tab bar 1
    
    //MainTable *firstViewController = [[MainTable alloc] init];
    //UINavigationController *firstNavigationController = [[UINavigationController alloc] initWithRootViewController:firstViewController];
    //firstNavigationController.tabBarItem.title = @"test";
    //firstViewController.managedObjectContext = self.managedObjectContext;
    
    
    ContactView *secondViewController = [[ContactView alloc] init];
    UINavigationController *secondNavigationController = [[UINavigationController alloc] initWithRootViewController:secondViewController];
    secondNavigationController.tabBarItem.title = @"Second";

    
    
    
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    tabBarController.viewControllers = @[secondNavigationController];
   
   // firstViewController.managedObjectContext = self.managedObjectContext;
    self.window.rootViewController = tabBarController;

    self.window.backgroundColor = [UIColor whiteColor];
   [self.window makeKeyAndVisible];
    
    
    
    //SecondViewController *secondViewController = [[SecondViewController alloc] init];
    
    */
    
    /*
     UINavigationController *navigationController = (UINavigationController *)self.window.rootViewController;
     MainTable *controller = (MainTable *)navigationController.topViewController;
     controller.managedObjectContext = self.managedObjectContext;
     //return YES;
     
    */
    
    
    
    
    
    //UITabBarController *tabBarController = (UITabBarController *) self.window.rootViewController;
    //MainTable *controller = (MainTable *)tabBarController.ViewController;
    //controller.managedObjectContext = self.managedObjectContext;
  

    /*
    
    UINavigationController *navigationController2 = (UINavigationController *)self.window.rootViewController;
    SubMainTable *controller2 = (SubMainTable *)navigationController2.topViewController;
    controller2.managedObjectContext2 = self.managedObjectContext;
    return YES;
   */
     /*
    NSManagedObjectContext *context = [self managedObjectContext];
    NSManagedObject *failedBankInfo = [NSEntityDescription
                                       insertNewObjectForEntityForName:@"Categories"
                                       inManagedObjectContext:context];
    [failedBankInfo setValue:@"Michal" forKey:@"catName"];
    
    NSError *error;
    if (![context save:&error]) {
        NSLog(@"Whoops, couldn't save: %@", [error localizedDescription]);
    }
    
    
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity = [NSEntityDescription
                                   entityForName:@"Categories" inManagedObjectContext:context];
    [fetchRequest setEntity:entity];
    NSArray *fetchedObjects = [context executeFetchRequest:fetchRequest error:&error];
    for (NSManagedObject *info in fetchedObjects) {
        NSLog(@"Name: %@", [info valueForKey:@"catName"]);
        
    }
    
    
    
    */
    
    /*
   NSManagedObjectContext *context = [self managedObjectContext];
    Categories *categories1 = [NSEntityDescription insertNewObjectForEntityForName:@"Categories"
     inManagedObjectContext:context];
     categories1.catName = @"Koszule";
          NSError *error;
     if (![context save:&error]) {
     NSLog(@"Whoops, couldn't save: %@", [error localizedDescription]);
     }
    
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"FailedBankInfo"
                                              inManagedObjectContext:context];
  [fetchRequest setEntity:entity];
    */
   /*
    // Create Managed Object
    NSEntityDescription *entityDescription = [NSEntityDescription entityForName:@"Categories" inManagedObjectContext:self.managedObjectContext];
    NSManagedObject *newCategories = [[NSManagedObject alloc] initWithEntity:entityDescription insertIntoManagedObjectContext:self.managedObjectContext];
    
    [newCategories setValue:@"Buty" forKey:@"catName"];
    [newCategories setValue:@"Main" forKey:@"catLevel"];
    
    NSError *error = nil;
    
    if (![newCategories.managedObjectContext save:&error]) {
        NSLog(@"Unable to save managed object context.");
        NSLog(@"%@, %@", error, error.localizedDescription);
    }
    
    
   */
    
    
    
    UITabBarController *tabBarController = (UITabBarController *)self.window.rootViewController;
    UINavigationController *navigationController = (UINavigationController *)[tabBarController.viewControllers objectAtIndex:0];
    MainTable *controller = (MainTable *)navigationController.topViewController;
    controller.managedObjectContext = self.managedObjectContext;
    
    
    
  /*
    mainTable = (MainTable *) self.window.rootViewController;
    UINavigationController *navigationController = [[UINavigationController alloc] init];
    UITabBarController *tabBarController = [[UITabBarController alloc]init];

     
    
    [self.window addSubview:navigationController.view];
    [self.window addSubview:tabBarController.view];
    [self.window makeKeyAndVisible];
    
    mainTable.managedObjectContext = self.managedObjectContext;
    //mainTable.managedObjectContext = self.managedObjectContext;
    
   
   */
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    // Saves changes in the application's managed object context before the application terminates.
    [self saveContext];
}

#pragma mark - Core Data stack

@synthesize managedObjectContext = _managedObjectContext;
@synthesize managedObjectModel = _managedObjectModel;
@synthesize persistentStoreCoordinator = _persistentStoreCoordinator;

- (NSURL *)applicationDocumentsDirectory {
    // The directory the application uses to store the Core Data store file. This code uses a directory named "caritas.wojasdb" in the application's documents directory.
    return [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] lastObject];
}

- (NSManagedObjectModel *)managedObjectModel {
    // The managed object model for the application. It is a fatal error for the application not to be able to find and load its model.
    if (_managedObjectModel != nil) {
        return _managedObjectModel;
    }
    NSURL *modelURL = [[NSBundle mainBundle] URLForResource:@"wojasdb" withExtension:@"momd"];
    _managedObjectModel = [[NSManagedObjectModel alloc] initWithContentsOfURL:modelURL];
    return _managedObjectModel;
}

- (NSPersistentStoreCoordinator *)persistentStoreCoordinator {
    // The persistent store coordinator for the application. This implementation creates and return a coordinator, having added the store for the application to it.
    if (_persistentStoreCoordinator != nil) {
        return _persistentStoreCoordinator;
    }
    
    // Create the coordinator and store
    
    _persistentStoreCoordinator = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:[self managedObjectModel]];
    NSURL *storeURL = [[self applicationDocumentsDirectory] URLByAppendingPathComponent:@"wojasdbnowa.sqlite"];
    NSError *error = nil;
    NSString *failureReason = @"There was an error creating or loading the application's saved data.";
    if (![_persistentStoreCoordinator addPersistentStoreWithType:NSSQLiteStoreType configuration:nil URL:storeURL options:nil error:&error]) {
        // Report any error we got.
        NSMutableDictionary *dict = [NSMutableDictionary dictionary];
        dict[NSLocalizedDescriptionKey] = @"Failed to initialize the application's saved data";
        dict[NSLocalizedFailureReasonErrorKey] = failureReason;
        dict[NSUnderlyingErrorKey] = error;
        error = [NSError errorWithDomain:@"YOUR_ERROR_DOMAIN" code:9999 userInfo:dict];
        // Replace this with code to handle the error appropriately.
        // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
        NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
        abort();
    }
    
    return _persistentStoreCoordinator;
}


- (NSManagedObjectContext *)managedObjectContext {
    // Returns the managed object context for the application (which is already bound to the persistent store coordinator for the application.)
   
  /*  NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"Categories" inManagedObjectContext:self.managedObjectContext];
    [fetchRequest setEntity:entity];
    NSError *error = nil;
    
    NSArray *result = [self.managedObjectContext executeFetchRequest:fetchRequest error:&error];
    
    if (error) {
        NSLog(@"Unable to execute fetch request.");
        NSLog(@"%@, %@", error, error.localizedDescription);
        
    } else {
        NSLog(@"%@", result);
    }
    */
    if (_managedObjectContext != nil) {
        return _managedObjectContext;
    }
    
    NSPersistentStoreCoordinator *coordinator = [self persistentStoreCoordinator];
    if (!coordinator) {
        return nil;
    }
    _managedObjectContext = [[NSManagedObjectContext alloc] init];
    [_managedObjectContext setPersistentStoreCoordinator:coordinator];
    return _managedObjectContext;
}





/*

- (NSArray *) getAllMain{
    NSManagedObjectContext *context = [self managedObjectContext];
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"Categories"
                                              inManagedObjectContext:context];
    [fetchRequest setEntity:entity];
    NSError *error;
    NSArray *fetchedObjects5 = [ context executeFetchRequest:fetchRequest error:&error];
    if((long)fetchedObjects5.count <0){
        return nil;
    }
    NSArray *getCale = [[NSArray alloc] init];
    if ((long) fetchedObjects5.count >0){
       // Categories *getCatCale = fetchedObjects5[0];
        NSFetchRequest *fetchRequestCale = [[NSFetchRequest alloc]init];
        NSEntityDescription * entityDescriptionCale =[NSEntityDescription entityForName:@"Categories" inManagedObjectContext:context];
        [fetchRequestCale setEntity:entityDescriptionCale];
        
        fetchRequestCale.predicate = [NSPredicate predicateWithFormat:@"(catLevel LIKE[c] 'Main')"];
        getCale =[context executeFetchRequest:fetchRequestCale error:nil];
    }
    return getCale;

 
}*/


#pragma mark - Core Data Saving support

- (void)saveContext {
    NSManagedObjectContext *managedObjectContext = self.managedObjectContext;
    if (managedObjectContext != nil) {
        NSError *error = nil;
        if ([managedObjectContext hasChanges] && ![managedObjectContext save:&error]) {
            // Replace this implementation with code to handle the error appropriately.
            // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
            NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
            abort();
        }
    }
}



@end
