//
//  ViewController.h
//  Quiz App
//
//  Created by Milan on 9/6/15.
//  Copyright (c) 2015 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>
@class QuestionBank;
@interface ViewController : UIViewController{
    __weak IBOutlet UILabel *showQuestion;
    __weak IBOutlet UIButton *questionButton;
    __weak IBOutlet UILabel *showStatus;
    __weak IBOutlet UILabel *optionA;
    __weak IBOutlet UILabel *optionB;
    __weak IBOutlet UILabel *optionC;
    __weak IBOutlet UILabel *optionD;
    __weak IBOutlet UIButton *showAnswerButton;
    int userAnswer;
    int actualAnswer;
}
@end

