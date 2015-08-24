//
//  Book.m
//  OC_Lesson_8_24_KVC
//
//  Created by 张天琦 on 15/8/24.
//  Copyright (c) 2015年 张天琦. All rights reserved.
//

#import "Book.h"

@implementation Book
- (NSString *)description
{
    return [NSString stringWithFormat:@"%@", _bookName];
}
-(id)initWtihName:(NSString * )name{
    
    _bookName = name;
    return self;
}
@end
