//
//  SizeInfo.h
//  wojasdb
//
//  Created by Michał Świerczek on 25.07.2015.
//  Copyright (c) 2015 michał. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class ColorInfo;

@interface SizeInfo : NSManagedObject

@property (nonatomic, retain) NSNumber * size;
@property (nonatomic, retain) ColorInfo *joinColor;

@end
