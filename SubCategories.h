//
//  SubCategories.h
//  wojasdb
//
//  Created by Michał Świerczek on 06.06.2015.
//  Copyright (c) 2015 michał. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Categories, Products;

@interface SubCategories : NSManagedObject

@property (nonatomic, retain) NSString * imageSubCategories;
@property (nonatomic, retain) NSString * nameSubCategories;
@property (nonatomic, retain) NSSet *joinP;
@property (nonatomic, retain) Categories *joinSubCategories;
@end

@interface SubCategories (CoreDataGeneratedAccessors)

- (void)addJoinPObject:(Products *)value;
- (void)removeJoinPObject:(Products *)value;
- (void)addJoinP:(NSSet *)values;
- (void)removeJoinP:(NSSet *)values;

@end
