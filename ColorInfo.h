//
//  ColorInfo.h
//  wojasdb
//
//  Created by Michał Świerczek on 06.06.2015.
//  Copyright (c) 2015 michał. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Products;

@interface ColorInfo : NSManagedObject

@property (nonatomic, retain) NSString * colorName;
@property (nonatomic, retain) NSString * imageCP;
@property (nonatomic, retain) Products *joinProducts;

@end
