//
//  QuestionCognosViewController.m
//  whatTosay
//
//  Created by Mac User on 5/12/14.
//  Copyright (c) 2014 systemsusa. All rights reserved.
//

#import "QuestionCognosViewController.h"

@interface QuestionCognosViewController ()

@end

@implementation QuestionCognosViewController

@synthesize questionNumber,correctAnswers,wrongAnswers,points,time,timerInt;
int contador2=0;


-(void) updatelaberls{
    
    correctAnswerCounter.text = [[NSString alloc]initWithFormat:@"%d",correctAnswers];
    
    wrongAnswerCounter.text=[[NSString alloc]initWithFormat:@"%d", wrongAnswers];
    
    yourPoints.text=[[NSString alloc] initWithFormat:@"%d", points];
    
    yourtime.text=[[NSString alloc] initWithFormat:@"your time is..%d", timerInt];
    
    
}



-(void)refresh{
    
    
    answer1.hidden=NO;
    
    answer2.hidden=NO;
    
    answer3.hidden=NO;
    
    answer4.hidden=NO;
    
    correctWrong.text=@"Correct / Wrong";
    
    
}



-(void) endOfGame{
    
    if (question1.hidden==YES){
        
        if (question2.hidden==YES){
            
            if (question3.hidden==YES){
                
                if (question4.hidden==YES){
                    
                    if (question5.hidden==YES){
                        
                        if (question6.hidden==YES){
                            
                            if (question7.hidden==YES){
                                
                                NSString *endMessage=[[NSString alloc] initWithFormat:@"Points: %d    |     %d correct answer   %d     wrong answer",points,correctAnswers, wrongAnswers];
                                
                                UIAlertView *end=[[UIAlertView alloc] initWithTitle:@"End of game" message:endMessage delegate:self cancelButtonTitle:nil otherButtonTitles:@"Restar quiz", nil];
                                
                                [end show];
                                
                                question1.enabled=YES;
                                contador2=0;
                                yourLevel.text=0;
                                question1.enabled  =YES;
                                
                                question2.enabled  =NO;
                                
                                question3.enabled  =NO;
                                
                                question4.enabled  = NO;
                                
                                question5.enabled  =NO;
                                
                                question6.enabled  =NO;
                                
                                question7.enabled  =NO;
                                
                                
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
    }
    
}


-(IBAction)levelselected:(id)sender{
    
    /* question1.enabled=YES;
     
     question2.enabled=YES;
     
     question3.enabled=YES;
     
     question4.enabled=YES;
     
     question5.enabled=YES;
     
     question6.enabled=YES;
     
     question7.enabled=YES;
     
     */
    
    if (timerInt>0) {
        
        [time invalidate];
        
        [self setTimerInt:0];
        
        time=[NSTimer scheduledTimerWithTimeInterval:(.75/1.0) target:self selector:@selector(alertVoid) userInfo:nil repeats:YES];
        
    }
    
    else{
        
        time=[NSTimer scheduledTimerWithTimeInterval:(.75/1.0) target:self selector:@selector(alertVoid) userInfo:nil repeats:YES];
        
    }
    
    if ([sender tag]==1) {
        
        question.text=@"who is the best";
        
        labelanswer1.text=@"apple ";
        
        labelanswer2.text=@"android 2";
        
        labelanswer3.text=@"lg ";
        
        labelanswer4.text=@"no correct answer";
        
        [self setQuestionNumber:1];
        
    }
    
    
    
    if ([sender tag]==2) {
        
        question.text=@"2 * 2";
        
        labelanswer1.text=@"8";
        
        labelanswer2.text=@"7";
        
        labelanswer3.text=@"4";
        
        labelanswer4.text=@"9";
        
        [self setQuestionNumber:2];
        
    }
    
    
    
    if ([sender tag]==3){
        
        question.text=@"Press B";
        
        labelanswer1.text=@"a";
        
        labelanswer2.text=@"b";
        
        labelanswer3.text=@"c";
        
        labelanswer4.text=@"d";
        
        [self setQuestionNumber:3];
        
    }
    
    
    
    if ([sender tag]==4) {
        
        question.text=@"Press Q";
        
        labelanswer1.text=@"a";
        
        labelanswer2.text=@"b";
        
        labelanswer3.text=@"c";
        
        labelanswer4.text=@"no correct answer";
        
        [self setQuestionNumber:4];
        
    }
    
    
    
    if ([sender tag]==5) {
        
        question.text=@"3 + 5 = ?";
        
        labelanswer1.text=@"2";
        
        labelanswer2.text=@"8";
        
        labelanswer3.text=@"9";
        
        labelanswer4.text=@"6";
        
        [self setQuestionNumber:5];
        
    }
    
    
    
    if ([sender tag]==6) {
        
        question.text=@"press k";
        
        labelanswer1.text=@"a";
        
        labelanswer2.text=@"b";
        
        labelanswer3.text=@"k";
        
        labelanswer4.text=@"d";
        
        [self setQuestionNumber:6];
        
    }
    
    
    
    if ([sender tag]==7) {
        
        question.text=@"Press f";
        
        labelanswer1.text=@"a";
        
        labelanswer2.text=@"f";
        
        labelanswer3.text=@"c";
        
        labelanswer4.text=@"b";
        
        [self setQuestionNumber:7];
        
    }
    
    
    
    [self performSelector:@selector(buttonEnable) withObject:nil afterDelay:1.1f];
    
    NSString *level= [sender titleForState:UIControlStateNormal];
    
    yourLevel.text=level;
    
    
    [self updatelaberls];
    
    [self refresh];
    
    
    
}



-(void)buttonEnable{
    /* question1.enabled  =YES;
     
     question2.enabled  =YES;
     
     question3.enabled  =YES;
     
     question4.enabled  =YES;
     
     question5.enabled  =YES;
     
     question6.enabled  =YES;
     
     question7.enabled  =YES;
     
     */switch (contador2) {
         case 0:
             
             question1.enabled  =YES;
             
             question2.enabled  =NO;
             
             question4.enabled  =NO;
             
             question5.enabled  =NO;
             
             question6.enabled  =NO;
             
             question7.enabled  =NO;
             
             break;
             
             
         case 1:
             
             question1.enabled  =YES;
             
             question2.enabled  =YES;
             
             question4.enabled  =NO;
             
             question5.enabled  =NO;
             
             question6.enabled  =NO;
             
             question7.enabled  =NO;
             
             break;
             
         case 2:
             
             question1.enabled  =YES;
             
             question2.enabled  =YES;
             
             question3.enabled  =YES;
             
             question4.enabled  =NO;
             
             question5.enabled  =NO;
             
             question6.enabled  =NO;
             
             question7.enabled  =NO;
             
             break;
             
         case 3:
             
             question1.enabled  =YES;
             
             question2.enabled  =YES;
             
             question3.enabled  =YES;
             
             question4.enabled  =YES;
             
             question5.enabled  =NO;
             
             question6.enabled  =NO;
             
             question7.enabled  =NO;
             
             break;
             
         case 4:
             
             question1.enabled  =YES;
             
             question2.enabled  =YES;
             
             question3.enabled  =YES;
             
             question4.enabled  =YES;
             
             question5.enabled  =YES;
             
             question6.enabled  =NO;
             
             question7.enabled  =NO;
             
             break;
             
         case 5:
             
             question1.enabled  =YES;
             
             question2.enabled  =YES;
             
             question3.enabled  =YES;
             
             question4.enabled  =YES;
             
             question5.enabled  =YES;
             
             question6.enabled  =YES;
             
             question7.enabled  =NO;
             
             break;
             
         case 6:
             
             question1.enabled  =YES;
             
             question2.enabled  =YES;
             
             question3.enabled  =YES;
             
             question4.enabled  =YES;
             
             question5.enabled  =YES;
             
             question6.enabled  =YES;
             
             question7.enabled  =YES;
             
             break;
             
             
         default:
             
             break;
             
             
     }
    
    
}

-(void) alertVoid{
    
    timerInt += 1;
    
    yourtime.text=[[ NSString alloc] initWithFormat:@"your time... %d",timerInt];
    
    
    
}

- (void)correctAnswer{
    
    [self setCorrectAnswers:[self correctAnswers] +1];
    
    
    calculateScore=100/ (timerInt+1);
    
    correctWrong.text= [[ NSString alloc] initWithFormat:@"Correct! Points + %d", calculateScore];
    
    [self setPoints:[self points] + calculateScore];
    contador2=contador2+1;
    switch (contador2) {
        case 0:
            
            question1.enabled  =YES;
            
            question2.enabled  =NO;
            
            question4.enabled  =NO;
            
            question5.enabled  =NO;
            
            question6.enabled  =NO;
            
            question7.enabled  =NO;
            
            break;
            
            
        case 1:
            
            question1.enabled  =YES;
            
            question2.enabled  =YES;
            
            question4.enabled  =NO;
            
            question5.enabled  =NO;
            
            question6.enabled  =NO;
            
            question7.enabled  =NO;
            
            break;
            
        case 2:
            
            question1.enabled  =YES;
            
            question2.enabled  =YES;
            
            question3.enabled  =YES;
            
            question4.enabled  =NO;
            
            question5.enabled  =NO;
            
            question6.enabled  =NO;
            
            question7.enabled  =NO;
            
            break;
            
        case 3:
            
            question1.enabled  =YES;
            
            question2.enabled  =YES;
            
            question3.enabled  =YES;
            
            question4.enabled  =YES;
            
            question5.enabled  =NO;
            
            question6.enabled  =NO;
            
            question7.enabled  =NO;
            
            break;
            
        case 4:
            
            question1.enabled  =YES;
            
            question2.enabled  =YES;
            
            question3.enabled  =YES;
            
            question4.enabled  =YES;
            
            question5.enabled  =YES;
            
            question6.enabled  =NO;
            
            question7.enabled  =NO;
            
            break;
            
        case 5:
            
            question1.enabled  =YES;
            
            question2.enabled  =YES;
            
            question3.enabled  =YES;
            
            question4.enabled  =YES;
            
            question5.enabled  =YES;
            
            question6.enabled  =YES;
            
            question7.enabled  =NO;
            
            break;
            
        case 6:
            
            question1.enabled  =YES;
            
            question2.enabled  =YES;
            
            question3.enabled  =YES;
            
            question4.enabled  =YES;
            
            question5.enabled  =YES;
            
            question6.enabled  =YES;
            
            question7.enabled  =YES;
            
            break;
            
            
        default:
            
            break;
            
            
    }
    
    
    
    
    if (questionNumber==1) {
        
        question1.hidden=YES;
        
    }
    
    if (questionNumber==2) {
        
        question2.hidden=YES;
        
    }
    
    
    
    if (questionNumber==3) {
        
        question3.hidden=YES;
        
    }
    
    
    
    if (questionNumber==4) {
        
        question4.hidden=YES;
        
    }
    
    
    
    if (questionNumber==5) {
        
        question5.hidden=YES;
        
    }
    
    
    
    if (questionNumber==6) {
        
        question6.hidden=YES;
        
    }
    
    if (questionNumber==7) {
        
        question7.hidden=YES;
        
    }
    
    
    answer1.hidden=YES;
    
    answer2.hidden=YES;
    
    answer3.hidden=YES;
    
    answer4.hidden=YES;
    
    
    [time invalidate];
    
    [self updatelaberls];
    
    [self endOfGame];
    
    
}



-(void)wrongAnswer{
    
    [self setWrongAnswers:[self wrongAnswers] +1];
    [self setPoints:[self points]-50];
    correctWrong.text=@"Wrong... - 50 points ";
    
}



-(void) answer:(id)sender{
    
    if ([sender tag] ==1 ) {
        
        //answer b
        
        //question 1
        
        if (questionNumber==1) {
            
            [self correctAnswer];
            
            
        }
        
        //question 2
        
        if (questionNumber==2) {
            
            [self wrongAnswer];
            
        }
        
        
        
        //question 3
        
        if (questionNumber==3) {
            
            [self wrongAnswer];
            
        }
        
        
        
        //question 4
        
        if (questionNumber==4) {
            
            [self wrongAnswer];
            
        }
        
        
        
        //question 5
        
        if (questionNumber==5) {
            
            [self wrongAnswer];
            
        }
        
        
        
        //question 6
        
        if (questionNumber==6) {
            
            [self wrongAnswer];
            
        }
        
        //question 7
        
        if (questionNumber==7) {
            
            [self wrongAnswer];
            
        }
        
        
        
    }
    
    
    
    if ([sender tag] ==2 ) {
        
        
        
        //question 1
        
        if (questionNumber==1) {
            
            [self wrongAnswer];
            
        }
        
        //question 2
        
        if (questionNumber==2) {
            
            [self wrongAnswer];
            
        }
        
        
        
        //question 3
        
        if (questionNumber==3) {
            
            [self correctAnswer];
            
        }
        
        
        
        //question 4
        
        if (questionNumber==4) {
            
            [self wrongAnswer];
            
        }
        
        
        
        //question 5
        
        if (questionNumber==5) {
            
            [self correctAnswer];
            
        }
        
        
        
        //question 6
        
        if (questionNumber==6) {
            
            [self wrongAnswer];
            
        }
        
        //question 7
        
        if (questionNumber==7) {
            
            [self correctAnswer];
            
        }
        
        
        
    }
    
    
    
    if ([sender tag] ==3 ) {
        
        //asnwer c
        
        //question 1
        
        if (questionNumber==1) {
            
            [self wrongAnswer];
            
        }
        
        //question 2
        
        if (questionNumber==2) {
            
            [self correctAnswer];
            
        }
        
        
        
        //question 3
        
        if (questionNumber==3) {
            
            [self wrongAnswer];
            
        }
        
        
        
        //question 4
        
        if (questionNumber==4) {
            
            [self wrongAnswer];
            
        }
        
        
        
        //question 5
        
        if (questionNumber==5) {
            
            [self wrongAnswer];
            
        }
        
        
        
        //question 6
        
        if (questionNumber==6) {
            
            [self correctAnswer];
            
        }
        
        //question 7
        
        if (questionNumber==7) {
            
            [self wrongAnswer];
            
        }
        
        
        
    }
    
    
    
    if ([sender tag] ==4) {
        
        //answer D
        
        //question 1
        
        if (questionNumber==1) {
            
            [self wrongAnswer];
            
        }
        
        //question 2
        
        if (questionNumber==2) {
            
            [self wrongAnswer];
            
        }
        
        
        
        //question 3
        
        if (questionNumber==3) {
            
            [self wrongAnswer];
            
        }
        
        
        
        //question 4
        
        if (questionNumber==4) {
            
            [self correctAnswer];
            
        }
        
        
        
        //question 5
        
        if (questionNumber==5) {
            
            [self wrongAnswer];
            
        }
        
        
        
        //question 6
        
        if (questionNumber==6) {
            
            [self wrongAnswer];
            
        }
        
        //question 7
        
        if (questionNumber==7) {
            
            [self wrongAnswer];
            
        }
        
        
        
    }
    
    
    
    NSString * answerChosen=[sender titleForState:UIControlStateNormal];
    
    NSLog(@"answer chosen= %@",answerChosen);
    
    
    [self updatelaberls];
    
    
}





-(void)alertView:(UIAlertView *) alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    
    if (alertView.tag==3) {
        
        if (buttonIndex==0) {
            
            exit(0);
        }
    }
    else{
        
        
        
        if (buttonIndex==1 || buttonIndex==0) {
            
            [time  invalidate];
            
            [self setTimerInt:0];
            
            [self refresh];
            
            [self setPoints:0];
            
            [self setCorrectAnswers:0];
            
            [self setWrongAnswers:0];
            
            [self setQuestionNumber:0];
            
            question1.hidden=NO;
            
            question2.hidden=NO;
            
            question3.hidden=NO;
            
            question4.hidden=NO;
            
            question5.hidden=NO;
            
            question6.hidden=NO;
            
            question7.hidden=NO;
            
            
            question.text=@"chose level";
            
            labelanswer1.text=@"";
            
            labelanswer2.text=@"";
            
            labelanswer3.text=@"";
            
            labelanswer4.text=@"";
            
            
            
            [self updatelaberls];
        }
        
        
        
        
        
    }
    
    
    
}



-(void)quit:(id)sender{
    
    UIAlertView *alertviewquit=[[UIAlertView alloc] initWithTitle:@"Are you sure ?" message:@"If you press yes que quiz will finish" delegate:self cancelButtonTitle:@"Yes" otherButtonTitles:@"No", nil];
    
    [alertviewquit setTag:3];
    
    [alertviewquit show];
    
    
}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil

{
    
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        
        // Custom initialization
        
    }
    
    return self;
    
}



- (void)viewDidLoad

{
    
    question1.enabled  =YES;
    
    question2.enabled  =NO;
    
    question3.enabled  =NO;
    
    question4.enabled  = NO;
    
    question5.enabled  =NO;
    
    question6.enabled  =NO;
    
    question7.enabled  =NO;
    
    [super viewDidLoad];
    
    // Do any additional setup after loading the view from its nib.
    
}



- (void)didReceiveMemoryWarning

{
    
    [super didReceiveMemoryWarning];
    
    // Dispose of any resources that can be recreated.
    
}


@end
