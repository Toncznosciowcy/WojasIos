//
//  ViewProducts.h
//  wojasdb
//
//  Created by Michał Świerczek on 06.06.2015.
//  Copyright (c) 2015 michał. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewProducts : UIViewController
@property (weak, nonatomic) IBOutlet UIView *galleryView;




@property (weak, nonatomic) IBOutlet UIView *sizeView;
@property (weak, nonatomic) IBOutlet UIView *colorView;
@property (weak, nonatomic) IBOutlet UIImageView *imageViewProducts;
@property (strong, nonatomic) NSString *imageRecive;
- (IBAction)actionSegmentProductsView:(id)sender;
@property (strong, nonatomic) NSString *titleBar;
@property (weak, nonatomic) IBOutlet UIView *HidingView;
- (IBAction)InfoButton:(id)sender;
- (IBAction)ShowButton:(id)sender;

@end
