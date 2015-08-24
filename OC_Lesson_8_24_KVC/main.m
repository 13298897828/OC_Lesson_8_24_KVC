//
//  main.m
//  OC_Lesson_8_24_KVC
//
//  Created by 张天琦 on 15/8/24.
//  Copyright (c) 2015年 张天琦. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
#import "Book.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        /*
        Student * s = [Student initWithName:@"哇哈哈" gender:@"蓝" age:19 num:14 score:88.9 book:@"嘻哈"];
        
        NSLog(@"%@",s);
//        使用点语法赋值  取值的本事  就是调用setter 和getter方法
        s.name = @"阿黄";
        NSLog(@"%@",s.name);
//        点语法和属性是没有关系的,只要符合setter getter  方法的命名规则就可以使用点语法调用
    
    
    
    */
//        用KVC操作实例变量
        Student * ss =[[Student alloc]initWithName:nil gender:nil age:0 num:0 score:0 book:nil];
        ss.name = @"dg";
        [ss setValue:@"称满墙" forKey:@"name"];
        NSLog(@"%@",ss.name);
        ss.age = 14;
        ss.gender = @"lan";
        ss.score = 434;
        ss.num  =  1;
        [ss setValue:@"11" forKey:@"num"];
        NSLog(@"%ld ",ss.num);
        NSLog(@"%@",[ss valueForKey:@"name"]);
        NSLog(@"%@",[ss valueForKey:@"score"]);
        [ss valueForKey:@"num"];
        [ss valueForKey:@"score"];
        [ss valueForKey:@"gender"];
        [ss valueForKey:@"ag"];
//        未定义的 用于排错,找不到key 值的时候自动调用这两个方法,不写会崩
        [ss setValue:@"不知道给谁" forUndefinedKey:@"no"];
        [ss valueForUndefinedKey:@"no"];
        
//       Book * book = [[Book alloc]init];
//        ss.book = book;
        ss.book.bookName = @"111";
        NSLog(@"%@",ss.book.bookName);
//        Student * s1 = [[Student alloc]init];
//        路径赋值  类中引用类
        [ss setValue:@"shenmewanyi" forKeyPath:@"book.bookName"];
        NSLog(@"%@",[ss valueForKeyPath:@"book.bookName"]);
        
        
        
//        一次性给多个实例变量赋值
//        实例变量存储在字典中,字典的key值必须和实例变量名相同
       [ ss setValuesForKeysWithDictionary:@{@"name":@"wafaf",@"gender":@"doubi",@"age":@"15",@"score":@"88.8",@"num":@"1"}];
        NSLog(@"%@",ss);
        
        
        }
    return 0;
}
