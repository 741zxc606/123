//
//  main.m
//  VowelMovement
//
//  Created by Apple on 16/3/1.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 创建两个数组对象，分别用于保存最初的字符串对象和去除元音字母后的版本
        NSArray *originalStrings = @[@"Sauerkraut",@"Raygun",
                                     @"Tesla love Lewis",@"Mississippi"];
        
        NSLog(@"originalStrings:%@", originalStrings);
        
        NSMutableArray *devowelizedStrings = [NSMutableArray array];
        
        // 创建数组对象，保存需要从字符串中移除的字符
        NSArray *vowels = @[@"a",@"e",@"i",@"o",@"u"];
        
        // 声明Block变量
        void (^devowelizer)(id,NSUInteger,BOOL *);
        
        // 将Block对象赋给变量
        devowelizer = ^(id string,NSUInteger i,BOOL *stop) {
        
            NSMutableString*newString = [NSMutableString stringWithString:string];
            
            // 枚举数组中的字符串，将所有出现的元音字母替换成空字符串
            for (NSString *s in vowels){
                NSRange fullRange = NSMakeRange(0, [newString length]);
                [newString replaceOccurrencesOfString:s
                                           withString:@""
                                              options:NSCaseInsensitiveSearch
                                                range:fullRange];
            }
            
            [devowelizedStrings addObject:newString];
            
        };// Block变量赋值结束
        
        // 枚举数组对象，针对每个数组中的对象执行Block对象devowelizer
        [originalStrings enumerateObjectsUsingBlock:devowelizer];
        NSLog(@"devowelized strings: %@", devowelizedStrings);
        
    }
    return 0;
}
