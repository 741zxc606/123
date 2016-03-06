//
//  main.m
//  RandomItems
//
//  Created by Apple on 16/3/6.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 创建一个NSMutableArray对象，并用items变量保存该对象的地址
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        for (int i =0; i < 10; i++) {
            BNRItem *item = [BNRItem randomItem];
            [items addObject:item];
        }
        
        id lastObj = [items lastObject];
        
        // lastObj是BNRItem对象，无法处理count消息
        [lastObj count];
        
        for (BNRItem *item in items) {
            NSLog(@"%@",item);
        }
        
        // 释放items所指向的NSMtableArray对象
        items = nil;
    }
    return 0;
}
