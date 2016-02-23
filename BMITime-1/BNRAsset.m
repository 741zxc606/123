//
//  BNRAsset.m
//  BMITime-1
//
//  Created by Apple on 16/1/30.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "BNRAsset.h"
#import "BNREmployee.h"

@implementation BNRAsset

- (NSString *)description
{
    //holder是否为非nil?
    if (self.holder){
        return [NSString stringWithFormat:@"<%@: $%d,assignes to %@>",
                self.label,self.resaleValue,self.holder];
    }else{
        return [NSString stringWithFormat:@"<%@ $%d unassigned>",
                self.label,self.resaleValue];
    }
}

- (void)dealloc
{
    NSLog(@"deallocating %@",self);
}

@end
