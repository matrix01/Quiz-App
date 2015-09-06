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
    return self;
}
-(void) setQuestion{
    questions =@[@"ABCD", @"ABCD",@"ABCD",@"ABCD",@"ABCD",@"ABCD",@"ABCD",@"ABCD",@"ABCD",@"ABCD",@"ABCD",@"ABCD",@"ABCD",@"ABCD",@"ABCD",@"ABCD", @"ABCD", @"ABCD", @"ABCD", @"ABCD"];
}
-(NSString*) getRandomQuestion{
    NSInteger i = arc4random()%20;
    return [questions objectAtIndex:i];
}
@end
