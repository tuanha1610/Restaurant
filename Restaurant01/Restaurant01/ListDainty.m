//
//  ListDainty.m
//  Restaurant01
//
//  Created by MAC on 1/4/14.
//  Copyright (c) 2014 MAC. All rights reserved.
//

#import "ListDainty.h"
#import <Parse/Parse.h>
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

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 90;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *simpleTableIdentifier = @"DaintyCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if(cell == nil){
        cell =[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    Recipe *recipe = [recipes objectAtIndex:indexPath.row];
    
    UIImageView *imageView = (UIImageView*) [cell viewWithTag:100];
    imageView.image = [UIImage imageNamed:recipe.imageFile];
    UILabel *nameLabel = (UILabel*) [cell viewWithTag:101];
    nameLabel.text = recipe.name;
    UILabel *prepTimeLabel = (UILabel*) [cell viewWithTag:102];
    prepTimeLabel.text = recipe.prepTime;
    
    return cell;}
@end
