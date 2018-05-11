//
//  MKPerson.m
//  messageSend
//
//  Created by 康 on 2018/5/10.
//  Copyright © 2018年 xiao. All rights reserved.
//

#import "MKPerson.h"

@implementation MKPerson

- (void)eat{
    NSLog(@"213456789");
}

- (void)eatWith:(NSString *)objc{
    NSLog(@"子类:  吃了%@",objc);
}

@end
