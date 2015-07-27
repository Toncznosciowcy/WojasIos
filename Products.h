//
//  Products.h
//  wojasdb
//
//  Created by Michał Świerczek on 25.07.2015.
//  Copyright (c) 2015 michał. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class ColorInfo, SubCategories;

@interface Products : NSManagedObject

@property (nonatomic, retain) NSString * imageProduct;
@property (nonatomic, retain) NSString * nameProduct;
@property (nonatomic, retain) NSNumber * priceProduct;
@property (nonatomic, retain) NSSet *joinColorProducts;
@property (nonatomic, retain) SubCategories *joinProductSC;
@end

@interface Products (CoreDataGeneratedAccessors)

- (void)addJoinColorProductsObject:(ColorInfo *)value;
- (void)removeJoinColorProductsObject:(ColorInfo *)value;
- (void)addJoinColorProducts:(NSSet *)values;
- (void)removeJoinColorProducts:(NSSet *)values;

@end
