//
//  ViewProducts.m
//  wojasdb
//
//  Created by Michał Świerczek on 06.06.2015.
//  Copyright (c) 2015 michał. All rights reserved.
//

#import "ViewProducts.h"

@interface ViewProducts ()

@end

@implementation ViewProducts
@synthesize imageRecive;
@synthesize imageViewProducts;
@synthesize HidingView;
@synthesize titleBar;
@synthesize colorView, sizeView, galleryView;

- (void)viewDidLoad {
    
    //- LOADING IMAGE //
    
    [super viewDidLoad];
    [[self navigationItem] setTitle:titleBar];
    imageViewProducts.image =[UIImage imageNamed:imageRecive];
    
    //-//
    
    //- BOTTOM VIEW //
    
    [HidingView setBackgroundColor:[[UIColor blackColor] colorWithAlphaComponent:0.5]];
    
    //-//
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)InfoButton:(id)sender {
    

    
         HidingView.hidden = YES;
    
    
       // [self.view bringSubviewToFront:_HidingView];
        //_HidingView.frame = CGRectMake(0, 480, 320, 480);
              //[UIView animateWithDuration:1.0
                        // animations:^{
                           //  _HidingView.frame = CGRectMake(0, 0, 320, 480);
         
         }
       // [_HidingView.subviews setValue:@YES forKeyPath:@"hidden"];


- (IBAction)ShowButton:(id)sender {
    
    
     HidingView.hidden = NO;

}
- (IBAction)actionSegmentProductsView:(UISegmentedControl *)sender {
    switch (sender.selectedSegmentIndex) {
        case 0:
            self.sizeView.hidden = NO;
            self.colorView.hidden = YES;
            self.galleryView.hidden = YES;
            break;
        case 1:
            self.sizeView.hidden = YES;
            self.colorView.hidden = NO;
            self.galleryView.hidden = YES;
            break;
        case 2:
            self.sizeView.hidden = YES;
            self.colorView.hidden = YES;
            self.galleryView.hidden = NO;
            break;
        default:
            break;
    }
    
    
    
    
}
@end
