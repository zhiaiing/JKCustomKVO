//
//  ViewController.m
//  messageSend
//
//  Created by 康 on 2018/5/10.
//  Copyright © 2018年 xiao. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import <objc/message.h>
#import "MKPerson.h"
#import "NSObject+kvo.h"

@interface ViewController ()

@property (nonatomic,strong) Person *p;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Person *person = [[Person alloc]init];
    _p = person;

    [self addCustomKVO];
    
//    [self.p addObserver:self forKeyPath:@"name" options:NSKeyValueObservingOptionNew context:nil];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    static int i = 0;
    i++;
    self.p.name = [NSString stringWithFormat:@"name_%d",i];
    self.p.age  = [NSString stringWithFormat:@"age _%d",i];
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context{
    NSLog(@"%@",change);
}

- (void)addCustomKVO{
    [self.p JK_addObserver:self forKeyPath:@"name" context:nil block:^(id observedObject, NSString *observedKey, id oldValue, id newValue) {
        NSLog(@"name ___ %@",newValue);
    }];
    
    [self.p JK_addObserver:self forKeyPath:@"age" context:nil block:^(id observedObject, NSString *observedKey, id oldValue, id newValue) {
        NSLog(@"age ___ %@",newValue);
    }];
}












- (void)setMKPerson{
    
    MKPerson *p = [[MKPerson alloc]init];
    

    struct objc_super MKSuper = {p,class_getSuperclass([MKPerson class])};
    
    ((void (*)(id, SEL , NSString*))objc_msgSendSuper)((__bridge id)(&MKSuper), sel_registerName("eatWith:"),@"哈哈哈");
    
}

- (void)setPersonData{
    Person *p = objc_msgSend(objc_getClass("Person"), sel_registerName("alloc"));
    
    p = objc_msgSend(p, sel_registerName("init"));
    
//    objc_msgSend(p, sel_registerName("eat"));
//    [p eatWith:@"sadfdgfh"];
//    ((void ()(id, SEL , NSString))objc_msgSend(p, sel_registerName("eatWith:"), @"asd");

    ((void (*)(id, SEL , NSString*))objc_msgSend)((id)p, @selector(eatWith:),@"33");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}































@end
