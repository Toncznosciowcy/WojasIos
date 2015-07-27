//
//  CategoriesCollectionViewController.m
//  wojasdb
//
//  Created by Michał Świerczek on 31.05.2015.
//  Copyright (c) 2015 michał. All rights reserved.
//

#import "CategoriesCollectionViewController.h"
#import "CategoriesCollectionViewCell.h"
#import "Products.h"
#import "ViewProducts.h"
#import "AppDelegate.h"
#import "ColorInfo.h"

@interface CategoriesCollectionViewController ()

@end

@implementation CategoriesCollectionViewController
@synthesize dataArray;
@synthesize managedObjectContext;
@synthesize receive;
@synthesize arrayFetch;
@synthesize arrayFetchColor;
static NSString * const reuseIdentifier = @"CVCell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[self navigationItem] setTitle:receive];
    
    
    
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity = [NSEntityDescription
                                    entityForName:@"Products" inManagedObjectContext:managedObjectContext];
    [fetchRequest setEntity:entity];
    NSError *error;
    NSPredicate  *predicate = [NSPredicate predicateWithFormat:@"(joinProductSC.nameSubCategories LIKE[c] %@)", receive];
    [fetchRequest setPredicate:predicate];
    arrayFetch= [ managedObjectContext executeFetchRequest:fetchRequest error:&error];
    
    
    
    
    

    
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    
    
    
    
    
    
    //NSPredicate  *predicate = [NSPredicate predicateWithFormat:@"(catLevel LIKE[c] 'Main7')"];
    //[fetchRequest2 setPredicate:predicate];
    
    
    //NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc]
    //                                   initWithKey:@"catName" ascending:YES];
    //[fetchRequest2 setSortDescriptors:@[sortDescriptor]];
    
    
    
    

    
    
    
    
    
    
    
    
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
    //[self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    dataArray = @[@"Michal",@"Joanna", @"Grzes", @"Duzy", @"Karol", @"Głowa", @"druid", @"Bombel", @"Andrzej", @"walek"];
    // Do any additional setup after loading the view.
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

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
#warning Incomplete method implementation -- Return the number of sections
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
#warning Incomplete method implementation -- Return the number of items in the section
    //return self.dataArray.count;
    return arrayFetch.count;
}





- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
  //  CategoriesCollectionViewCell *aCell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    CategoriesCollectionViewCell *aCell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CVCell" forIndexPath:indexPath];
   Products *infoArray = [arrayFetch objectAtIndex:indexPath.row];
    aCell.cvLabel.text = [NSString stringWithFormat:@"%@",infoArray.nameProduct];
    aCell.cvImage.image = [UIImage imageNamed:infoArray.imageProduct];
    aCell.cvPrice.text = [NSString stringWithFormat:@"%@",infoArray.priceProduct];

    
    //-----------szukanie kolorów----------
    NSError *error;
    NSFetchRequest *fetchColor = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity2 = [NSEntityDescription
                                    entityForName:@"ColorInfo" inManagedObjectContext:managedObjectContext];
    [fetchColor setEntity:entity2];
    NSPredicate  *predicate2 = [NSPredicate predicateWithFormat:@"(joinProducts.nameProduct LIKE[c] %@)", infoArray.nameProduct];
    [fetchColor setPredicate:predicate2];
    arrayFetchColor= [ managedObjectContext executeFetchRequest:fetchColor error:&error];

    
   //NSLog(@"Co ja tutaj wyswietlam? Jest kolor %@???",colorInfo.colorName);
    
    
    
    
    
    
    
    
    /*
    aCell.cvLabel.text = self.dataArray[indexPath.row];
    //aCell.cvLabel.text = [NSString stringWithFormat:@"abcwwwwwwwww"];
    aCell.cvImage.image = [UIImage imageNamed:@"on.jpg"];
    */
     
     return aCell;
    // Configure the cell
    

}



-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    
    if ([[segue identifier] isEqualToString:@"showProduct"])
        
    {
        
        
        
        ViewProducts *viewProducts = [segue destinationViewController];
        NSIndexPath *indexPaths = [[self.collectionView indexPathsForSelectedItems]objectAtIndex:0];
        
        Products *info = [arrayFetch objectAtIndex:indexPaths.row];
        NSString *sent = [[NSString alloc]init];
        NSString *sent2 = [[NSString alloc]init];
        sent = info.imageProduct;
        viewProducts.imageRecive = sent;
        sent2 = info.nameProduct;
        viewProducts.nameRecive = sent2;
        NSString *titleBarSent = [[NSString alloc]init];
        titleBarSent = info.nameProduct;
        viewProducts.titleBar = titleBarSent;
        
        NSLog(@"Co ja wysylam tutaj?? (%@) to colection", sent);
        NSLog(@"SPR (%@) to colection", sent2);
        
         }
    
    
}
#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/
- (void)collectionView:(UICollectionView *)colView didHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell* cell = [colView cellForItemAtIndexPath:indexPath];
    cell.contentView.backgroundColor = [UIColor blueColor];
}

- (void)collectionView:(UICollectionView *)colView didUnhighlightItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell* cell = [colView cellForItemAtIndexPath:indexPath];
    cell.contentView.backgroundColor = nil;
}


@end


