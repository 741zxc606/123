//
//  main.m
//  Appliances
//
//  Created by Apple on 16/3/4.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRAppliance.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BNRAppliance *a = [[BNRAppliance alloc] init];
        NSLog(@"a is %@",a);
        [a setProductName:@"Washing Machine"];
        [a setVoltage:240];
        NSLog(@"a is %@",a);
    }
    return 0;
}
