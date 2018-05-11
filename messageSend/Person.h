//
//  Person.h
//  messageSend
//
//  Created by 康 on 2018/5/10.
//  Copyright © 2018年 xiao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

- (void)eat;

- (void)eatWith:(NSString *)objc;

- (void)shut:(NSString *)say;


@property (nonatomic,strong) NSString *name;
@property (nonatomic,strong) NSString *age;

@end
