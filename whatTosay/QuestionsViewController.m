//
//  QuestionsViewController.m
//  whatTosay
//
//  Created by Mac User on 5/6/14.
//  Copyright (c) 2014 systemsusa. All rights reserved.
//

#import "QuestionsViewController.h"



@interface QuestionsViewController ()
@end
@implementation QuestionsViewController
@synthesize questionNumber,correctAnswers,wrongAnswers,points,time,timerInt;
int contador=0;


-(void) updatelaberls{
    
    correctAnswerCounter.text = [[NSString alloc]initWithFormat:@"%d",correctAnswers];
    
    wrongAnswerCounter.text=[[NSString alloc]initWithFormat:@"%d", wrongAnswers];
    
    yourPoints.text=[[NSString alloc] initWithFormat:@"%d", points];
    
    yourtime.text=[[NSString alloc] initWithFormat:@"Your time is..%d", timerInt];
    
    
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
                                contador=0;
                               yourLevel.text=0;
                                question1.enabled  =YES;
                                
                                question2.enabled  =NO;
                                
                                question3.enabled  =NO;
                                
                                question4.enabled  = NO;
                                
                                question5.enabled  =NO;
                                
                                question6.enabled  =NO;
                                
                                question7.enabled  =NO;
                                 check1.hidden=YES;
                                check2.hidden=YES;
                                check3.hidden=YES;
                                check4.hidden=YES;
                                check5.hidden=YES;
                                check6.hidden=YES;
                                
                               
                                
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
        
        question.text=@"Objective-C is  used to develop in ?";
        
        labelanswer1.text=@"apple hardware ";
        
        labelanswer2.text=@"Toshiba hardware";
        
        labelanswer3.text=@"Windows hardare";
        
        labelanswer4.text=@"IBM hardware";
        
        [self setQuestionNumber:1];
        
    }
    
    
    
    if ([sender tag]==2) {
        
        question.text=@"Who is the inventor of objective-C?";
        
        labelanswer1.text=@"Bill gates";
        
        labelanswer2.text=@"Steve jobs";
        
        labelanswer3.text=@"Brad cox";
        
        labelanswer4.text=@"Linus Torvalds";
        
        [self setQuestionNumber:2];
        
    }
    
    
    
    if ([sender tag]==3){
        
        question.text=@"Which is the last version of ios?";
        
        labelanswer1.text=@"5";
        
        labelanswer2.text=@" 7.1";
        
        labelanswer3.text=@"6.1";
        
        labelanswer4.text=@"7.0";
        
        [self setQuestionNumber:3];
        
    }
    
    
    
    if ([sender tag]==4) {
        
        question.text=@"What is MVC?";
        
        labelanswer1.text=@"Model View Controller object";
        
        labelanswer2.text=@"Model Variable controller pattern";
        
        labelanswer3.text=@"Multitask View controller pattern";
        
        labelanswer4.text=@"Mode View Controller pattern";
        
        [self setQuestionNumber:4];
        
    }
    
    
    
    if ([sender tag]==5) {
        
        question.text=@"Data type wich allow you to combine diferents data items ?";
        
        labelanswer1.text=@"String";
        
        labelanswer2.text=@"Struct";
        
        labelanswer3.text=@"ID";
        
        labelanswer4.text=@"array";
        
        [self setQuestionNumber:5];
        
    }
    
    
    
    if ([sender tag]==6) {
        
        question.text=@"Allow you to add a method to an existing class,even if you don’t have the original source code?";
        
        labelanswer1.text=@"Audiotoolbox framework";
        
        labelanswer2.text=@"class extensions";
        
        labelanswer3.text=@"Category";
        
        labelanswer4.text=@"MVC";
        
        [self setQuestionNumber:6];
        
    }
    
    
    
    if ([sender tag]==7) {
        
        question.text=@"Let you perform more than one action  at the same time, running independently of one another?";
        
        labelanswer1.text=@"Loops";
        
        labelanswer2.text=@"Threads";
        
        labelanswer3.text=@"Methods";
        
        labelanswer4.text=@"dictionaries";
        
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
    
    */switch (contador) {
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
    
    yourtime.text=[[ NSString alloc] initWithFormat:@"Hurry up... %d",timerInt];
   
    
    
}

- (void)correctAnswer{
    
    [self setCorrectAnswers:[self correctAnswers] +1];
    
    [self playsoundcorrect];
    calculateScore=100/ (timerInt+1);
    cross.hidden=YES;
    
    correctWrong.text= [[ NSString alloc] initWithFormat:@"Correct! Points + %d", calculateScore];
    
    [self setPoints:[self points] + calculateScore];
   contador=contador+1;
    switch (contador) {
        case 0:
            
            question1.enabled  =YES;
            
            question2.enabled  =NO;
            
            question4.enabled  =NO;
            
            question5.enabled  =NO;
            
            question6.enabled  =NO;
            
            question7.enabled  =NO;
            
            break;
            
            
        case 1:
           
            check1.hidden=NO;
            question1.enabled  =YES;
            
            question2.enabled  =YES;
            
            question4.enabled  =NO;
            
            question5.enabled  =NO;
            
            question6.enabled  =NO;
            
            question7.enabled  =NO;
            
            break;
            
        case 2:
            check2.hidden=NO;
            
            question1.enabled  =YES;
            
            question2.enabled  =YES;
            
            question3.enabled  =YES;
            
            question4.enabled  =NO;
            
            question5.enabled  =NO;
            
            question6.enabled  =NO;
            
            question7.enabled  =NO;
            
            break;
            
        case 3:
            check3.hidden=NO;
            
            question1.enabled  =YES;
            
            question2.enabled  =YES;
            
            question3.enabled  =YES;
            
            question4.enabled  =YES;
            
            question5.enabled  =NO;
            
            question6.enabled  =NO;
            
            question7.enabled  =NO;
            
            break;
            
        case 4:
            check4.hidden=NO;
            
            question1.enabled  =YES;
            
            question2.enabled  =YES;
            
            question3.enabled  =YES;
            
            question4.enabled  =YES;
            
            question5.enabled  =YES;
            
            question6.enabled  =NO;
            
            question7.enabled  =NO;
            
            break;
            
        case 5:
            check5.hidden=NO;
            question1.enabled  =YES;
            
            question2.enabled  =YES;
            
            question3.enabled  =YES;
            
            question4.enabled  =YES;
            
            question5.enabled  =YES;
            
            question6.enabled  =YES;
            
            question7.enabled  =NO;
            
            break;
            
        case 6:
            check6.hidden=NO;
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
    [self setPoints:[self points]-30];
    correctWrong.text=@"Wrong... - 30 points ";
    cross.hidden=NO;
    [self playsoundwrong];
    
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
    
    
    //[self updatelaberls];
   
    
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

-(void) playsoundcorrect{
    CFBundleRef mainBundle= CFBundleGetMainBundle();
    CFURLRef soundFileUrl;
    soundFileUrl= CFBundleCopyResourceURL(mainBundle, (CFStringRef) @"goodjob", CFSTR("mp3"),NULL);
    UInt32 soundID;
    AudioServicesCreateSystemSoundID(soundFileUrl, &soundID);
    AudioServicesPlaySystemSound(soundID);
    
    
}

-(void) playsoundwrong{
    CFBundleRef mainBundle= CFBundleGetMainBundle();
    CFURLRef soundFileUrl;
    soundFileUrl= CFBundleCopyResourceURL(mainBundle, (CFStringRef) @"wrong", CFSTR("mp3"),NULL);
    UInt32 soundID;
    AudioServicesCreateSystemSoundID(soundFileUrl, &soundID);
    AudioServicesPlaySystemSound(soundID);
    
    
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

