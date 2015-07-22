//
//  SubMainTable.m
//  wojasdb
//
//  Created by michał on 27.04.2015.
//  Copyright (c) 2015 michał. All rights reserved.
//

#import "SubMainTable.h"
#import "SubCategoriesCell.h"
#import "SubCategories.h"
#import "CategoriesCollectionViewController.h"



@interface SubMainTable ()

@end

@implementation SubMainTable
@synthesize managedObjectContext2;
@synthesize subTableArray;
@synthesize role;
@synthesize titleBar;




- (void)viewDidLoad {
    [super viewDidLoad];

    [[self navigationItem] setTitle:titleBar];
    
    
    /*
    NSManagedObjectContext *moc = [self managedObjectContext];
    NSEntityDescription *entityDescription = [NSEntityDescription
                                              entityForName:@"Employee" inManagedObjectContext:moc];
    NSFetchRequest *request = [[NSFetchRequest alloc] init];
    [request setEntity:entityDescription];
    */
   
    NSFetchRequest *fetchRequest2 = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity2 = [NSEntityDescription
                                    entityForName:@"SubCategories" inManagedObjectContext:managedObjectContext2];
    [fetchRequest2 setEntity:entity2];
    NSError *error;
   // NSString *segueCatName = [NSString stringWithFormat:@"%@", role];
    
   NSPredicate  *predicate2 = [NSPredicate predicateWithFormat:@"(joinSubCategories.catLevel LIKE[c] %@)", role];
  [fetchRequest2 setPredicate:predicate2];
    
    
     //NSPredicate  *predicate = [NSPredicate predicateWithFormat:@"(catLevel LIKE[c] 'Main7')"];
      //[fetchRequest2 setPredicate:predicate];
    
    
    //NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc]
    //                                   initWithKey:@"catName" ascending:YES];
   //[fetchRequest2 setSortDescriptors:@[sortDescriptor]];
    
    
    
    
    
    
    self.subTableArray= [ managedObjectContext2 executeFetchRequest:fetchRequest2 error:&error];
    
    
    
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
/*
    // Return the number of rows in the section.
    NSIndexPath *index;
    Categories *many = [subTableArray objectAtIndex:index.row];

   // NSSortDescriptor *desc = [[NSSortDescriptor alloc]initWithKey:@"nameSubCategories" ascending:NO];
   // NSArray *sortedCategories = [many.joinCategories sortedArrayUsingDescriptors:[NSArray arrayWithObjects:desc, nil]];
   // SubCategories *rowSubCategories = [sortedCategories objectAtIndex:index.row];
   // NSArray *all1 = [rowSubCategories ];
    NSSet *abcdef = many.joinCategories;
    NSMutableArray *sortedCategories = [NSMutableArray arrayWithArray:[abcdef allObjects]];
    NSLog(@"to co to ???co to%lu",many.joinCategories.count);
    
    NSLog(@"to co toa tutuaj co mamy ???co to%lu",sortedCategories.count);
    //NSUInteger *all = many.joinCategories.count;
    
    
    return  sortedCategories.count  ;
 
 */
    NSLog(@"ile tutaj mamy  %lu",subTableArray.count);
    return subTableArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    SubCategoriesCell *cell1 = [tableView dequeueReusableCellWithIdentifier:@"SubCategoriesCell" forIndexPath:indexPath];
    
    // Configure the cell...
    SubCategories *info2 = [subTableArray objectAtIndex:indexPath.row];
   /* NSArray *relations = [info2.joinCategories allObjects];
    NSSortDescriptor *desc = [[NSSortDescriptor alloc]initWithKey:@"nameSubCategories" ascending:YES];
    NSLog(@"dddddddddddddddd %@",desc);
    NSLog(@"dddddddddddddddd %@",relations.);
    NSLog(@"dddddddddddddddd %@",info2.joinCategories);
    
    relations = [relations sortedArrayUsingDescriptors:[NSArray arrayWithObject:desc]];
    

    cell1.subLabelCell.text =[NSString stringWithFormat:@"%@",relations];
    
   // info2.joinCategories ;
    
    //[NSString stringWithFormat:@"%@",info2.joinCategories.nameSubCategories];
  //  cell1.SubImageCell.image = [UIImage imageNamed:info2.abc.imageSubCategories];
   
    
    //NSSortDescriptor *desc = [[NSSortDescriptor alloc]initWithKey:@"nameSubCategories" ascending:NO];
    NSArray *sortedCategories = [info2.joinCategories sortedArrayUsingDescriptors:[NSArray arrayWithObjects:desc, nil]];
    SubCategories *rowSubCategories = [sortedCategories objectAtIndex:indexPath.row];
    //cell1.subLabelCell.text = rowSubCategories.nameSubCategories;
    cell1.subLabelCell.text = [NSString stringWithFormat:@"%@",rowSubCategories.nameSubCategories];
    NSLog(@"Co ja wyswietlam%@",rowSubCategories.nameSubCategories);
    
    
    */
   // NSSortDescriptor *sort = [NSSortDescriptor sortWithKey:@"nameSubCategories" ascending:NO];
    
    //Category *sectionCategory=[[fetchedResultsController fetchedObjects] objectAtIndex:indexPath.section];
   // Categories *info2 =[[NSFetchedResultsController self.fetchRequest2] objectAtIndex:indexPath.section];
   
    
    
    
    //NSSortDescriptor *desc = [[NSSortDescriptor alloc]initWithKey:@"nameSubCategories" ascending:NO];
    //NSSet *abcdef = info2.joinCategories;
    //NSMutableArray *sortedCategories = [NSMutableArray arrayWithArray:[abcdef allObjects]];
    
    
    //cell1.subLabelCell.text = rowSubCategories.nameSubCategories;
   //// cell1.subLabelCell.text = [NSString stringWithFormat:@"%@",sortedCategories.nameSubCategories];
   // NSLog(@"Co ja wyswietlam%@",sortedCategories.nameSubCategories);
    
    /*
    NSSortDescriptor *desc = [[NSSortDescriptor alloc]initWithKey:@"nameSubCategories" ascending:NO];
    self.sortedCategories = [info2.joinCategories sortedArrayUsingDescriptors:[NSArray arrayWithObjects:desc, nil]];
    SubCategories *rowSubCategories = [self.sortedCategories objectAtIndex:indexPath.row];
    //cell1.subLabelCell.text = rowSubCategories.nameSubCategories;
    cell1.subLabelCell.text = [NSString stringWithFormat:@"%@",rowSubCategories.nameSubCategories];
    NSLog(@"Co ja wyswietlam%@",rowSubCategories.nameSubCategories);
    
    //NSSortDescriptor *desc = [[NSSortDescriptor alloc]initWithKey:@"nameSubCategories" ascending:NO];
    //self.sortedCategories = [info2.joinCategories allObjects];
    //SubCategories *adsfasdf = [info2.joinCategories
    */
  //  NSLog(@"wazne   wazne %@",self.sortedCategories);
    //cell1.subLabelCell.text = rowSubCategories.nameSubCategories;
    //cell1.subLabelCell.text = [NSString stringWithFormat:@"%@",rowSubCategories.nameSubCategories];
    //NSLog(@"Co ja wyswietlam%@",rowSubCategories.nameSubCategories);
    cell1.subLabelCell.text = [NSString stringWithFormat:@"%@",info2.nameSubCategories];
    cell1.SubImageCell.image = [UIImage imageNamed:info2.imageSubCategories];
    return cell1;
    
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/
-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    
    if ([[segue identifier] isEqualToString:@"showProducts"])
        
    {
        
        CategoriesCollectionViewController *productscollection = [segue destinationViewController];
        NSIndexPath *myIndexPath = [self.tableView indexPathForSelectedRow];
        SubCategories *info = [subTableArray objectAtIndex:myIndexPath.row];
        NSString *sent = [[NSString alloc]init];
        sent = info.nameSubCategories;
        productscollection.receive = sent;
        NSLog(@"Co ja wysylam tutaj?? (%@) to RoleDetailTVC", sent);
        [[segue destinationViewController] setManagedObjectContext:self.managedObjectContext2];
    }
    
    else {
        NSLog(@"Unidentified Segue Attempted!");
    }
    
    
}
/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
