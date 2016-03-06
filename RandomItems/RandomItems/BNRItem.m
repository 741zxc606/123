//
//  BNRItem.m
//  RandomItems
//
//  Created by Apple on 16/3/6.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem

+ (instancetype)randomItem
{
    // 创建不可变数组对象，包含三个形容词
    NSArray *randomAdjectiveList = @[@"Fluffy",@"Rusty",@"Shiny"];
    
    // 创建不可变数组对象，包含三个名词
    NSArray *randomNounList = @[@"Bear",@"Spork",@"Mac"];
    
    // 根据数组对象所包含对象的个数，得到随机索引
    // 注意：运算符%是模运算符，运算后得到的是余数
    // 因此adjectiveIndex 是一个0到2（包括2）的随机数
    NSInteger adjectiveIndex = arc4random() % [randomAdjectiveList count];
    NSInteger nounIndex = arc4random() % [randomAdjectiveList count];
    
    // 注意，类型为NSInteger是一种针对unsigned long (无符号长整数)的类型定义
    
    NSString *randomName = [NSString stringWithFormat:@"%@ %@",
                            randomAdjectiveList[adjectiveIndex],
                            randomNounList[nounIndex]];
    
    int randomValue = arc4random() % 100;
    
    NSString *randomSerialNumber = [NSString stringWithFormat:@"%c%c%c%c%c",
                                    'O' + arc4random() % 10,
                                    'A' + arc4random() % 26,
                                    'O' + arc4random() % 10,
                                    'A' + arc4random() % 26,
                                    'O' + arc4random() % 10];
    
    BNRItem *newItem = [[self alloc] initWithItemName:randomName
                                       valueInDollars:randomValue
                                        serialNumber:randomSerialNumber];
    
    return newItem;
}

- (instancetype)initWithItemName:(NSString *)name
                  valueInDollars:(int)value
                    serialNmuber:(NSString *)sNmuber
{
    // 调用父类的指定初始化方法
    self = [super init];
    
    // 父类的指定初始化方法是否成功创建了父类对象？
    if (self) {
        // 为实例变量设定初始值
        _itemName = name;
        _serialNumber = sNmuber;
        _valueInDollars = value;
        
        // 设置_dateCreated的值为系统当前时间
        _dateCreated = [[NSDate alloc] init];
    }
    
    // 返回初始化后的对象新地址
    return self;
}

- (void)setItemName:(NSString *)str
{
    _itemName = str;
}

- (NSString *)itemName
{
    return _itemName;
}

- (void)setSerialNumber:(NSString *)str
{
    _serialNumber = str;
}

- (NSString *)serialNumber
{
    return _serialNumber;
}

- (void)setValueInDollars:(int)v
{
    _valueInDollars = v;
}

- (int)valueInDollars
{
    return _valueInDollars;
}

- (NSDate *)dateCreated
{
    return _dateCreated;
}

- (NSString *)description
{
    NSString *descriptionString = [[NSString alloc] initWithFormat:@"%@ (%@):Worth $%d, recorded on %@",
                                   self.itemName,
                                   self.serialNumber,
                                   self.valueInDollars,
                                   self.dateCreated];
    return descriptionString;
}

- (instancetype)initWithItemName:(NSString *)name
{
    return [self initWithItemName:name
                    valueInDollars:0
                     serialNmuber:@""];
}

- (instancetype)init
{
    return [self initWithItemName:@"Item"];
}

@end
