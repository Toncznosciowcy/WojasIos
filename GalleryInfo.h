//
//  GalleryInfo.h
//  wojasdb
//
//  Created by Michał Świerczek on 25.07.2015.
//  Copyright (c) 2015 michał. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class ColorInfo;

@interface GalleryInfo : NSManagedObject

@property (nonatomic, retain) NSString * namePG;
@property (nonatomic, retain) NSString * photoPG;
@property (nonatomic, retain) ColorInfo *joinColorPG;

@end
