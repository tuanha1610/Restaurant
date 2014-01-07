//
//  Food.h
//  Restaurant02
//
//  Created by MAC on 1/8/14.
//  Copyright (c) 2014 MAC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Parse/Parse.h>
@interface Food : NSObject
@property (strong, nonatomic) NSString* name;
@property(strong, nonatomic)NSNumber* price;
@property(strong, nonatomic)PFFile *image;
@property(strong, nonatomic) NSString* recipe;
@end
