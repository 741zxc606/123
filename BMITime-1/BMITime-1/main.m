//
//  main.m
//  BMITime-1
//
//  Created by Apple on 16/1/29.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNREmployee.h"
#import "BNRAsset.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
//        //创建BNREmployee实例
//        BNREmployee *mikey = [[BNREmployee alloc] init];
//        
//        //使用存方法赋予属性你喜欢的任意值
//        mikey.weightInKilos = 96;
//        mikey.heightInMeters = 1.8;
//        mikey.employeeID = 12;
//        mikey.hireDate = [NSDate dateWithNaturalLanguageString:@"Aug 2nd,2010"];
//        
//        //使用取方法打印出实例变量的值
//        float height = mikey.heightInMeters;
//        int weight = mikey.weightInKilos;
//        NSLog(@"mikey is %.2f meters tall and weighs %d kilos",height,weight);
//        NSDate *date = mikey.hireDate;
//        NSLog(@"%@ hired on %@",mikey,date);
//       
//        //使用定制方法打印出bmi的值
//        float bmi = [mikey bodyMassIndex];
//        double years = [mikey yearOfEmployment];
//        NSLog(@"BMI of %.2f,has worked with us for %.2f years",bmi, years);
        
        //创建NSMutableArray对象，用来包含多个BNREmploee对象
        NSMutableArray *employees = [[NSMutableArray alloc] init];
        
        //创建NSMutableDictionary对象，用于包含多个“主管”
        NSMutableDictionary *executives = [[NSMutableDictionary alloc] init];
        
        for (int i = 0;i < 10;i++){
        
            //创建BNREmployee实例
            BNREmployee *mikey = [[BNREmployee alloc] init];
            
            //为实例变量赋值
            mikey.weightInKilos = 90 + i;
            mikey.heightInMeters = 1.8 - i/10.0;
            mikey.employeeID = i;
            
            //将新创建的BNREmployee实例加入数组
            [employees addObject:mikey];
            
            //第一个BNREmployee对象？
            if (i == 1) {
                [executives setObject:mikey forKey:@"CEO"];
            }
            
            //第二个BNREmployee对象？
            if (i == 1) {
                [executives setObject:mikey forKey:@"CTO"];
            }
        }
        
        NSMutableArray *allAssets = [[NSMutableArray alloc] init];
        
        //创建10个BNRAsset对象
        for (int i = 0;i < 10;i++){
        
            //创建一个BNRAsser对象
            BNRAsset *asset = [[BNRAsset alloc] init];
            
            //为BNRAsset对象设置合适的标签
            NSString *currentLabel = [NSString stringWithFormat:@"Laptop %d",i];
            asset.label = currentLabel;
            asset.resaleValue = 350 + i * 17;
            
            //生成0至9之间的随机整数（包含0和9）
            NSUInteger randomIndex = random() % [employees count];
            
            //取出相应的BNREmployee对象
            BNREmployee *randomEmployee = [employees objectAtIndex:randomIndex];
            
            //将BNRAsset对象赋给该BNREmployee对象
            [randomEmployee addAssets:asset];
            
            [allAssets addObject:asset];
        }
        
        NSSortDescriptor *voa = [NSSortDescriptor sortDescriptorWithKey:@"valueOfAssets" ascending:YES];
        
        NSSortDescriptor *eid = [NSSortDescriptor sortDescriptorWithKey:@"employeeID" ascending:YES];
        
        [employees sortUsingDescriptors:@[voa,eid]];
        
        NSLog(@"Employees: %@",employees);
        NSLog(@"Giving up ownership of one employee");
        [employees removeObjectAtIndex:5];
        
        NSLog(@"allAssets:%@",allAssets);
        
        //输出整个NSMutableArray对象
        NSLog(@"executives: %@", executives);
        
        //输出CEO的信息
        NSLog(@"CEO: %@",executives[@"CEO"]);
        executives = nil;
        
        NSPredicate *predicate = [NSPredicate predicateWithFormat:@"holder.valueOfAssets > 70"];
        
        NSArray *toBeReclainmed = [allAssets filteredArrayUsingPredicate:predicate];
        NSLog(@"toBeReclaimed: %@", toBeReclainmed);
        toBeReclainmed = nil;
        
        NSLog(@"Giving up ownership of arrays");
        
        allAssets = nil;
        employees = nil;
    }
    sleep(100);
    return 0;
}
