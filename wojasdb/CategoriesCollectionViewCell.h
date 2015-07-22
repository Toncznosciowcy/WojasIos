//
//  CategoriesCollectionViewCell.h
//  wojasdb
//
//  Created by Michał Świerczek on 31.05.2015.
//  Copyright (c) 2015 michał. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CategoriesCollectionViewCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIImageView *cvImage;
@property (weak, nonatomic) IBOutlet UILabel *cvLabel;
@property (weak, nonatomic) IBOutlet UILabel *cvPrice;


@end
