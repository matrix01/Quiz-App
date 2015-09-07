//
//  QuestionBank.h
//  Quiz App
//
//  Created by Milan on 9/6/15.
//  Copyright (c) 2015 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QuestionBank : NSObject{
    NSArray *questions;
    NSArray *answer;
    NSMutableDictionary *options;
    NSInteger random;
}
-(NSInteger) getRandomNumber;
-(void)generateRandomQuestion;
-(void) setQuestion;
-(NSString*) getAnswer;
-(NSString*) getRandomQuestion;
-(NSArray*) getQuestionOptions;
@end

