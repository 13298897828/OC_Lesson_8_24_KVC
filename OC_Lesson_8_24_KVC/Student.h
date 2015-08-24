//
//  Student.h
//  OC_Lesson_8_24_KVC
//
//  Created by 张天琦 on 15/8/24.
//  Copyright (c) 2015年 张天琦. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Book;
@interface Student : NSObject
@property (nonatomic,retain)NSString * name;
@property (nonatomic,retain)NSString * gender;
@property (nonatomic,assign)NSInteger age;
@property (nonatomic,assign)NSInteger num;
@property (nonatomic,assign)CGFloat score;
@property (nonatomic,retain)Book * book;
-(id)initWithName:(NSString *)name gender:(NSString * )gender age:(NSInteger)age num:(NSInteger)num score:(CGFloat)score book:(Book *)book;
+(id)initWithName:(NSString *)name gender:(NSString * )gender age:(NSInteger)age num:(NSInteger)num score:(CGFloat)score book:(Book *)book;                                                                                                           
@end
