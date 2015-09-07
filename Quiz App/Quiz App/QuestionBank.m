//
//  QuestionBank.m
//  Quiz App
//
//  Created by Milan on 9/6/15.
//  Copyright (c) 2015 Apple. All rights reserved.
//

#import "QuestionBank.h"

@implementation QuestionBank

-(id) init{
    [self superclass];
    questions = [[NSArray alloc]init];
    answer = [[NSArray alloc]init];
    options = [[NSMutableDictionary alloc]init];
    return self;
}
-(void) setQuestion{
    questions =@[@"Meaning of IOS is-",
                 @"First IOS was written in-",
                 @"Which is not a function of IOS-",
                 @"What happens first after starting a router-",
                 @"CLI in IOS terminology is short form of-",
                 @"Subinterfaces allows to you to-",
                 @"Which mode provides interactive configuration dialog-"];
    
    answer =@[@"C",@"C",@"D",@"B",@"C",@"A",@"D"];
    
    options[@0] = @[@"Integrated operating system", @"Intergrated open system", @"Internetworking operating system", @"None of above"];
    options[@1] = @[@"1984", @"1985", @"1986", @"1987"];
    options[@2] = @[@"Carrying network protocols and functions", @"Connecting high speed traffic between devices", @"Providing scalability for ease of network growth and redundancy", @"Creating session between hosts in LAN"];
    options[@3] = @[@"Load IOS from flash memory", @"Power on self test of router", @"Searching by IOS of a valid configuration", @"None of above"];
    options[@4] = @[@"Caller line interface", @"Common line interface", @"Command link interface", @"None of above"];
    options[@5] = @[@"Create logical interfaces within the router", @"Get into previleged mode", @"Get into user execution mode", @"None of above"];
    options[@6] = @[@"User EXEC mode", @"Privileged mode", @"Global configuration mode", @"Setup mode"];
    
}
-(NSInteger) getRandomNumber{
    return arc4random()%7;
}
-(void)generateRandomQuestion{
    random = [self getRandomNumber];
}
-(NSString*) getRandomQuestion{
    [self generateRandomQuestion];
    return [questions objectAtIndex:random];
}
-(NSString*) getAnswer{
    return [answer objectAtIndex:random];
}
-(NSArray*) getQuestionOptions{
    NSNumber* key = [NSNumber numberWithInteger:random];
    return options[key];
}
@end
