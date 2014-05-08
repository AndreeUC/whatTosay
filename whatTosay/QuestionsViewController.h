//
//  QuestionsViewController.h
//  whatTosay
//
//  Created by Mac User on 5/6/14.
//  Copyright (c) 2014 systemsusa. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QuestionsViewController : UIViewController
{

IBOutlet UIButton * question1;
IBOutlet UIButton *question2;
IBOutlet UIButton *question3;
IBOutlet UIButton *question4;
IBOutlet UIButton *question5;
IBOutlet UIButton *question6;
IBOutlet UIButton *question7;

IBOutlet UIButton *answer1;
IBOutlet UIButton *answer2;
IBOutlet UIButton *answer3;
IBOutlet UIButton *answer4;
IBOutlet UILabel * question;

IBOutlet UILabel * labelanswer1;
IBOutlet UILabel * labelanswer2;
IBOutlet UILabel * labelanswer3;
IBOutlet UILabel * labelanswer4;

IBOutlet UILabel *wrongAnswerCounter;
IBOutlet UILabel *correctAnswerCounter;

IBOutlet UILabel *correctWrong;
IBOutlet UILabel *yourLevel;
IBOutlet UILabel *yourPoints;

int correctAnswer;
int wrongAnswer;
int points;
int questionNumber;

NSTimer * time;
int timerInt;
IBOutlet UILabel *yourtime;
int calculateScore;
}

-(IBAction)levelselected:(id)sender;
-(IBAction)answer:(id)sender;


@property int correctAnswers;
@property int wrongAnswers;
@property int points;
@property int questionNumber;
@property int timerInt;
@property (nonatomic, retain) NSTimer *time;

@end
