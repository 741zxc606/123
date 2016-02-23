//
//  BNRPerson.m
//  BMITime-1
//
//  Created by Apple on 16/1/29.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "BNRPerson.h"

@implementation BNRPerson
//
//- (float)heightInMeters
//{
//    return _heightInMeters;
//}
//
//- (void)setHeightInMeters:(float)h
//{
//    _heightInMeters = h;
//}
//
//- (int)weightInKilos
//{
//    return _weightInKilos;
//}
//
//- (void)setWeightInKilos:(int)w
//{
//    _weightInKilos = w;
//}
//
- (float)bodyMassIndex
{
    float h = [self heightInMeters];
    return [self weightInKilos] / (h * h);
}

@end
