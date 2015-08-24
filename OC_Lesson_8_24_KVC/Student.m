//
//  Student.m
//  OC_Lesson_8_24_KVC
//
//  Created by 张天琦 on 15/8/24.
//  Copyright (c) 2015年 张天琦. All rights reserved.
//

#import "Student.h"
#import "Book.h"
@implementation Student
@synthesize name = _name;
-(id)initWithName:(NSString *)name gender:(NSString * )gender age:(NSInteger)age num:(NSInteger)num score:(CGFloat)score book:(Book *)book{
    
    self  = [super init];
    if (self) {
        _name = name;
        _age = age;
        _gender = gender;
        _score = score;
        _num = num;
        _book = [[Book alloc]init];
    }
    return self;
}
+(id)initWithName:(NSString *)name gender:(NSString * )gender age:(NSInteger)age num:(NSInteger)num score:(CGFloat)score book:(Book *)book{
    Student * s = [[Student alloc]initWithName:name gender:gender age:age num:num score:score book:book];
    return s;
    
}
- (NSString *)description
{
    return [NSString stringWithFormat:@"%@ %@ %ld %ld %f %@", _name,_gender,_num,_age,_score,_book];
}
-(void)setValue:(id)value forUndefinedKey:(NSString *)key{
    NSLog(@"%@",key);
}
-(id)valueForUndefinedKey:(NSString *)key{
    NSLog(@"%@",key);
    return @"cuowu";
}
@end
