//
//  NSObject+kvo.h
//  messageSend
//
//  Created by 康 on 2018/5/11.
//  Copyright © 2018年 xiao. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^KangObservingBlock)(id observedObject, NSString *observedKey, id oldValue, id newValue);

@interface NSObject (kvo)

- (void)JK_addObserver:(NSObject *)observer forKeyPath:(NSString *)keyPath context:(nullable void *)context block:(KangObservingBlock )block;

@end
