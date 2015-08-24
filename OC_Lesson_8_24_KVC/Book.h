//
//  Book.h
//  OC_Lesson_8_24_KVC
//
//  Created by 张天琦 on 15/8/24.
//  Copyright (c) 2015年 张天琦. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Book : NSObject
@property  (nonatomic,retain)NSString * bookName;
-(id)initWtihName:(NSString * )name;
@end
