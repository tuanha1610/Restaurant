//
//  ListDainty.m
//  Restaurant01
//
//  Created by MAC on 1/4/14.
//  Copyright (c) 2014 MAC. All rights reserved.
//

#import "ListDainty.h"
#import <Parse/Parse.h>
#import "Dainty.h"
@interface ListDainty() 
@end

@implementation ListDainty

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
//-(id)initWithCoder:(NSCoder *)aCoder{
  //  self = [super initWithCoder:[aCoder];
    //        if(self){
       //         // Custom the table
                
      //          // The className to query on
        //        self.parseClassName = @"tblDainty";
                
          //      // The key of the PFObject to display in the label of the default cell style
         //       self.textKey = @"nameDainty";
                
           //     // Whether the built-in pull-to-refresh is enabled
             //   self.pullToRefreshEnabled = YES;
                
               // // Whether the built-in pagination is enabled
             //   self.paginationEnabled = NO;
                
             //   // The number of objects to show per page
             //   //self.objectsPerPage = 10;
          //  }
          //  return self;
//}
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(refreshTable:)
                                                 name:@"refreshTable"
                                               object:nil];
}
            -(BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation{
                return (toInterfaceOrientation != UIInterfaceOrientationMaskPortraitUpsideDown);
            }
            -(PFQuery*)queryForTable{
                PFQuery *query=[PFQuery queryWithClassName:self.parseClassName];
                return query;
            }
            -(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath object:(PFObject *)object
{
                static NSString *simpleTableidentifier=@"DaintyCell";
                UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableidentifier];
                if(cell==nil){
                    cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableidentifier];
                }
                
                // Configure the cell
                PFFile *thumbnail=[object objectForKey:@"imagesDainty"];
                PFImageView *thumbnailImageView = (PFImageView*)[cell viewWithTag:100];
                thumbnailImageView.image = [UIImage imageNamed:@"placeholder.jpg"];
                thumbnailImageView.file = thumbnail;
                [thumbnailImageView loadInBackground];
                
                UILabel *nameLabel = (UILabel*) [cell viewWithTag:101];
                nameLabel.text = [object objectForKey:@"nameDainty"];
                
            //    UILabel *prepTimeLabel = (UILabel*) [cell viewWithTag:102];
               // prepTimeLabel.text = [object objectForKey:@"prepTime"];
                
                return cell;            }
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
