//
//  main.m
//  String-1
//
//  Created by Apple on 16/2/26.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSError *error;
        NSString *str = [[NSString alloc]
           initWithContentsOfFile:@"/etc/reslv.conf"
                         encoding:NSASCIIStringEncoding
                         error:&error];
        if(!str){
            NSLog(@"read failed:%@",[error localizedDescription]);
        }else{
            NSLog(@"resolv.conf looks like this:%@",str);
        }
    }
    return 0;
}
