//
//  Dainty.h
//  Restaurant01
//
//  Created by MAC on 1/7/14.
//  Copyright (c) 2014 MAC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Parse/Parse.h>
@interface Dainty : NSObject
@property (strong, nonatomic) NSString * nameDainty;
@property (strong, nonatomic) NSNumber* price;
@property (strong, nonatomic) PFFile* img;
@property (strong, nonatomic) NSArray* recipe;

@end
