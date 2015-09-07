//
//  ViewController.m
//  Quiz App
//
//  Created by Milan on 9/6/15.
//  Copyright (c) 2015 Apple. All rights reserved.
//

#import "ViewController.h"
#import "QuestionBank.h"
@interface ViewController (){
    QuestionBank *qb;
}
-(int) answerMaping:(NSString*)option;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    qb = [[QuestionBank alloc]init];
    [qb setQuestion];
    showAnswerButton.hidden=YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(int) answerMaping:(NSString*)option{
    if([option isEqualToString:@"A"])return 1;
    else if([option isEqualToString:@"B"]) return 2;
    else if([option isEqualToString:@"C"]) return 3;
    else if([option isEqualToString:@"D"]) return 4;
    else return -1;
}
- (IBAction)showRandomQuestion:(UIButton *)sender {
    [showQuestion setText: [qb getRandomQuestion]];
    NSArray *tempOption = [qb getQuestionOptions];
    [optionA setText:[@"A. " stringByAppendingString:[tempOption objectAtIndex:0]]];
    [optionB setText:[@"B. " stringByAppendingString:[tempOption objectAtIndex:1]]];
    [optionC setText:[@"C. " stringByAppendingString:[tempOption objectAtIndex:2]]];
    [optionD setText:[@"D. " stringByAppendingString:[tempOption objectAtIndex:3]]];
    
    showStatus.text = @"????";
    showAnswerButton.hidden = YES;
}
- (IBAction)checkAnswer:(id)sender {
    UIButton *button = (UIButton*)sender;
    userAnswer = (int)button.tag;
    actualAnswer = [self answerMaping:[qb getAnswer]];
    
    if(actualAnswer == userAnswer){
        showStatus.text = @"Correct";
        showAnswerButton.hidden = YES;
    }
    else{
        showStatus.text = @"Wrong";
        showAnswerButton.hidden=NO;
    }
}
- (IBAction)showCorrectAnswer:(UIButton *)sender {
    showStatus.text=[qb getAnswer];
}

@end
