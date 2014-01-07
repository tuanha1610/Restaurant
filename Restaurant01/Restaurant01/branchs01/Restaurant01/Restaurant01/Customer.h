//
//  Customer.h
//  Restaurant01
//
//  Created by MAC on 1/4/14.
//  Copyright (c) 2014 MAC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Customer : NSObject
@property (strong, nonatomic) NSNumber *idCustomer;
@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *phone;
@property (strong, nonatomic) NSString *mail;
-(id)initWithId:(NSNumber*)idCustomer name:(NSString*)name mail:(NSString*)mail endPhone:(NSString*)phone;
@end
