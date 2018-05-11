//
//  Person.m
//  messageSend
//
//  Created by 康 on 2018/5/10.
//  Copyright © 2018年 xiao. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)eat{
    NSLog(@"eat");
}

- (void)eatWith:(NSString *)objc{
    NSLog(@"-------");
    NSLog(@"父类:  吃了%@",objc);
}

- (void)shut:(NSString *)say{
    NSLog(@"%@",say);
}


@end
