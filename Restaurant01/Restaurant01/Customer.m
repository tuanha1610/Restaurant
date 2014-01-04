//
//  Customer.m
//  Restaurant01
//
//  Created by MAC on 1/4/14.
//  Copyright (c) 2014 MAC. All rights reserved.
//

#import "Customer.h"

@implementation Customer
-(id)initWithId:(NSNumber *)idCustomer name:(NSString *)name mail:(NSString *)mail endPhone:(NSString *)phone{
    self.idCustomer =idCustomer;
    self.name= name;
    self.mail = mail;
    self.phone = phone;
    return self;
}
@end
