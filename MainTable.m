//
//  MainTable.m
//  wojasdb
//
//  Created by michał on 02.04.2015.
//  Copyright (c) 2015 michał. All rights reserved.
//

#import "MainTable.h"
#import "Categories.h"
#import "AppDelegate.h"
#import "MainTableCell.h"
#import "SubMainTable.h"


@interface MainTable ()

@property (nonatomic, strong) NSFetchedResultsController *fetchedResultsController;

@end

@implementation MainTable


@synthesize managedObjectContext;



@synthesize failedBankInfos;
@synthesize failedBankInfos3;
@synthesize selectedRole;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
  //NSEntityDescription *entity = [NSEntityDescription  entityForName:@"Categories" inManagedObjectContext:managedObjectContext];
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity = [NSEntityDescription
                                    entityForName:@"Categories" inManagedObjectContext:managedObjectContext];
    [fetchRequest setEntity:entity];
     NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc]
                                      initWithKey:@"catName" ascending:YES];
    NSError *error;
    [fetchRequest setSortDescriptors:@[sortDescriptor]];
    failedBankInfos3= [ managedObjectContext executeFetchRequest:fetchRequest error:&error];
    
    
    
    
    
 //   NSPredicate  *predicate2 = [NSPredicate predicateWithFormat:@"(catName LIKE[c] %@)", selectedRole];
   // [fetchRequest setPredicate:predicate2];

  /*  NSEntityDescription *entity = [NSEntityDescription  entityForName:@"Categories" inManagedObjectContext:managedObjectContext];
    
    
    
    NSFetchRequest *fetchReques = [[NSFetchRequest alloc] init];
    
    [fetchReques setEntity:entity];
    
    [fetchReques setResultType:NSDictionaryResultType];
    
    [fetchReques setReturnsDistinctResults:YES];
    
    [fetchReques setPropertiesToFetch:@[@"catName", @"imageCat"]];
    
    
    
    // Execute the fetch.
    
    NSError *error;
    
    id requestedValue = nil;
    
    failedBankInfos = [managedObjectContext executeFetchRequest:fetchReques error:&error];
    
    if (failedBankInfos == nil) {
        
        // Handle the error.
        
    }*/
    
  /*  NSFetchRequest *fetchRequest3 = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity3 = [NSEntityDescription
                                 entityForName:@"Categories" inManagedObjectContext:managedObjectContext];

    [fetchRequest3 setEntity:entity3];
    self.failedBankInfos2 = [ managedObjectContext executeFetchRequest:fetchRequest3 error:&error];
    
    
  */


    
  // NSError *error;
   // NSPredicate  *predicate = [NSPredicate predicateWithFormat:@"(catLevel LIKE[c] 'Main7')"];
  //  [fetchRequest setPredicate:predicate];
    //NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc]
   //                                    initWithKey:@"catName" ascending:YES];
    //[fetchRequest setSortDescriptors:@[sortDescriptor]];
   // self.failedBankInfos = [ managedObjectContext executeFetchRequest:fetchRequest error:&error];
    
    
    
    
    
    
  /*
    NSArray * array = [self.managedObjectContext executeFetchRequest:fetchRequest error:&error];
    if (array == nil) {
        NSLog(@"Testing: No results found");
        
    }else {
        NSLog(@"Testing: %d Results found.", [array count]);
    }
    
    NSData * dataBytes = [array objectAtIndex:0];
    dataBytes = [[array objectAtIndex:0] imgPng];
    self.ImageCatCell = [UIImage imageWithData:dataBytes];
    
    
    */
    
    
    //self.failedBankInfos = [managedObjectContext executeFetchRequest:fetchRequest error:&error];
    //self.title = @"Failed Banks";
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
   /*
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity = [NSEntityDescription
                                   entityForName:@"FailedBankInfo" inManagedObjectContext:managedObjectModel];
    [fetchRequest setEntity:entity];
    NSError *error;
    self.failedBankInfos = [managedObjectModel executeFetchRequest:fetchRequest error:&error];
    self.title = @"Failed Banks";
    
   */
    
    
    //
    // [request setEntity:[NSEntityDescription entityForName:@"Categories" inManagedObjectContext:[failedBankInfos managedObjectContext]]];
     // [request setIncludesSubentities:NO];
     // NSArray *fredsFavoriteAndHatedFoods = [[failedBankInfos managedObjectContext] executeFetchRequest:request error:nil];
    
    
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

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Table view data source#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    // Return the number of rows in the section.
    

 
    
    
   // AppDelegate *appDelegate = [[AppDelegate alloc] init];
     //   NSArray *cat1 = appDelegate.fetchedObjects1;
  // return cat1.count;
    return failedBankInfos3.count;
 
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    MainTableCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MainTableCell" forIndexPath:indexPath];
    // Configure the cell...
    
   
   Categories *info = [failedBankInfos3 objectAtIndex:indexPath.row];
    cell.labelCatName.text = [NSString stringWithFormat:@"%@",info.catName];
    cell.ImageCatCell.image = [UIImage imageNamed:info.imageCat];

 
    return cell;
 
     
     //NSArray *arraycatname =[ info valueForKey:@"catName"];
     //cell.labelCatName.text = [NSString stringWithFormat:@"%@",
     //arraycatname];
 

}



-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    
    if ([[segue identifier] isEqualToString:@"subCategories"])
        
    {
        /*
        
        SubMainTable *subname = [segue destinationViewController];
        NSIndexPath *myIndexPath = [self.tableView indexPathForSelectedRow];
        
    
        subname.fetchSubName = [ failedBankInfos objectAtIndex:myIndexPath.row];
        [subname setTitle:[ failedBankInfos objectAtIndex:myIndexPath.row]];
        NSLog(@"%@", subname.fetchSubName);
        */
        
       
        
        
        
        SubMainTable *subname = [segue destinationViewController];
     
        
        //subname.delegate= self;
        NSIndexPath *myIndexPath = [self.tableView indexPathForSelectedRow];
      //  self.selectedRole = [self.failedBankInfos objectAtIndex:myIndexPath5.row];
        
        Categories *info4 = [failedBankInfos3 objectAtIndex:myIndexPath.row];
        //NSArray *arraycatname =[ info4 valueForKey:@"catName"];
        selectedRole = info4.catLevel;
        subname.role = self.selectedRole;
        
        NSString *titleBarSent = [[NSString alloc]init];
        titleBarSent = info4.catName;
        subname.titleBar = titleBarSent;
        
        
        
        NSLog(@"Co ja wysylam?? (%@) to RoleDetailTVC", self.selectedRole);
       //NSLog(@"to ja Passing poziom (%@) to RoleDetailTVC", self.selectedRole.catLevel);
        //subname.role = self.selectedRole;
   
        [[segue destinationViewController] setManagedObjectContext2:self.managedObjectContext];
    }

    else {
        NSLog(@"Unidentified Segue Attempted!");
    }
    
    
}

- (void)theSaveButtonOnTheRoleDetailTVCWasTapped:(SubMainTable *)controller
{
    // do something here like refreshing the table or whatever
    
    // close the delegated view
    [controller.navigationController popViewControllerAnimated:YES];
}


/*
- (NSFetchRequest *)entryListFetchRequest {
    NSFetchRequest *fetchRequest = [NSFetchRequest fetchRequestWithEntityName:@"Categories"];
    
    fetchRequest.sortDescriptors = @[[NSSortDescriptor sortDescriptorWithKey:@"catName" ascending:NO]];
    
    return fetchRequest;
 
 
 
 NSFetchRequest *request = [[NSFetchRequest alloc] initWithEntityName:@"Categories"];
 NSSortDescriptor *sortDescriptor = [NSSortDescriptor sortDescriptorWithKey:@"catName" ascending:YES];
 [request setSortDescriptors:@[sortDescriptor]];
 
 NSError *fetchError = nil;
 NSArray *result =[self.managedObjectContext executeFetchRequest:request error:&fetchError];
 
 
}
*/
/*
- (NSFetchedResultsController *)fetchedResultsController {
    if (_fetchedResultsController != nil) {
        return _fetchedResultsController;
    }
    
    Categories *categories2= [Categories defaultStack];
    NSFetchRequest *fetchRequest = [self entryListFetchRequest];
    
    _fetchedResultsController = [[NSFetchedResultsController alloc] initWithFetchRequest:fetchRequest managedObjectContext:categories2.managedObjectContext sectionNameKeyPath:@"catLevel" cacheName:nil];
    _fetchedResultsController.delegate = self;
    
    return _fetchedResultsController;
}
*/
/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

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

- (void)controllerDidChangeContent:(NSFetchedResultsController *)controller
{
    [self.tableView endUpdates];
}


@end
