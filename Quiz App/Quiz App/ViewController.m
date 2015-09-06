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

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    qb = [[QuestionBank alloc]init];
    [qb setQuestion];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)showRandomQuestion:(UIButton *)sender {
    [showQuestion setText: [qb getRandomQuestion]];
}

@end
