//
//  ColorInfo.h
//  wojasdb
//
//  Created by Michał Świerczek on 25.07.2015.
//  Copyright (c) 2015 michał. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class GalleryInfo, Products, SizeInfo;

@interface ColorInfo : NSManagedObject

@property (nonatomic, retain) NSString * colorName;
@property (nonatomic, retain) NSString * imageCP;
@property (nonatomic, retain) Products *joinProducts;
@property (nonatomic, retain) NSSet *joinSizeColor;
@property (nonatomic, retain) NSSet *joinGalleryColor;
@end

@interface ColorInfo (CoreDataGeneratedAccessors)

- (void)addJoinSizeColorObject:(SizeInfo *)value;
- (void)removeJoinSizeColorObject:(SizeInfo *)value;
- (void)addJoinSizeColor:(NSSet *)values;
- (void)removeJoinSizeColor:(NSSet *)values;

- (void)addJoinGalleryColorObject:(GalleryInfo *)value;
- (void)removeJoinGalleryColorObject:(GalleryInfo *)value;
- (void)addJoinGalleryColor:(NSSet *)values;
- (void)removeJoinGalleryColor:(NSSet *)values;

@end
