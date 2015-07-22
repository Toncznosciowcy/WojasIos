//
//  Categories.h
//  wojasdb
//
//  Created by Michał Świerczek on 06.06.2015.
//  Copyright (c) 2015 michał. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class SubCategories;

@interface Categories : NSManagedObject

@property (nonatomic, retain) NSString * catLevel;
@property (nonatomic, retain) NSString * catName;
@property (nonatomic, retain) NSString * imageCat;
@property (nonatomic, retain) NSSet *joinCategories;
@end

@interface Categories (CoreDataGeneratedAccessors)

- (void)addJoinCategoriesObject:(SubCategories *)value;
- (void)removeJoinCategoriesObject:(SubCategories *)value;
- (void)addJoinCategories:(NSSet *)values;
- (void)removeJoinCategories:(NSSet *)values;

@end
