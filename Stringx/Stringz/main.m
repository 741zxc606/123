//
//  main.m
//  Stringz
//
//  Created by Apple on 16/2/25.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSMutableString *str = [[NSMutableString alloc] init];
        for (int i = 0; i < 10; i++) {
            [str appendString:@"Aaron is cool!\n"];
        }
        
        // 声明一个指向NSError对象的指针，但是不创建相应的对象
        // 实际上，只有当发生错误时，才会由writeToFile创建相应的NSError对象
        NSError *error;
        
        // 将NSError 指针通过引用传入writeToFile:atomically:encoding :error方法
        BOOL success = [str writeToFile:@"/tmp/cool.txt"
                             atomically:YES
                               encoding:NSUTF8StringEncoding
                                  error:&error];
        
        //检查返回的布尔值，如果写入文件失败，就查询NSError对象并输出错误描述
        if (success){
            NSLog(@"done writing /tmp/cool.txt");
        }else{
            NSLog(@"done writing /tmp/cool.txt failed:%@",[error localizedDescription]);
        }
    }
    return 0;
}
