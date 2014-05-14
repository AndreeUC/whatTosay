//
//  questionAndroidViewController.m
//  whatTosay
//
//  Created by Mac User on 5/12/14.
//  Copyright (c) 2014 systemsusa. All rights reserved.
//

#import "questionAndroidViewController.h"

@interface questionAndroidViewController ()

@end

@implementation questionAndroidViewController
@synthesize questionNumber,correctAnswers,wrongAnswers,points,time,timerInt;
int contador1=0;


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
                                contador1=0;
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
        
        question.text=@"Android is an operating system based on?";
        
        labelanswer1.text=@"html ";
        
        labelanswer2.text=@"Linux kernel";//
        
        labelanswer3.text=@"Objective-C";
        
        labelanswer4.text=@"C#";
        
        [self setQuestionNumber:1];
        
    }
    
    
    
    if ([sender tag]==2) {
        
        question.text=@"Provides different media codecs allowing the recording and playback of different media formats";
        
        labelanswer1.text=@"Layout";
        
        labelanswer2.text=@"Content Providers";
        
        labelanswer3.text=@"Views:";
        
        labelanswer4.text=@"Media framework";//
        
        [self setQuestionNumber:2];
        
    }
    
    
    
    if ([sender tag]==3){
        
        question.text=@"Manage the data sharing between applications";
        
        labelanswer1.text=@"Activity Manager";
        
        labelanswer2.text=@"Multi Task";
        
        labelanswer3.text=@"SQlite";
        
        labelanswer4.text=@"Content Providers";//
        
        [self setQuestionNumber:3];
        
    }
    
    
    
    if ([sender tag]==4) {
        
        question.text=@"Is the database engine used in android for data storage purposes";
        
        labelanswer1.text=@"Activity Manager";
        
        labelanswer2.text=@"Resource Manager";
        
        labelanswer3.text=@"SQlite";//
        
        labelanswer4.text=@"no correct answer";
        
        [self setQuestionNumber:4];
        
    }
    
    
    
    if ([sender tag]==5) {
        
        question.text=@"It is a type of JVM used in android devices to run apps and is optimized for low processing power and low memory environments";
        
        labelanswer1.text=@"OpenGL";
        
        labelanswer2.text=@"Resource Manager:";
        
        labelanswer3.text=@"Core Java Libraries";
        
        labelanswer4.text=@"Dalvik Virtual Machine";//
        
        [self setQuestionNumber:5];
        
    }
    
    
    
    if ([sender tag]==6) {
        
        question.text=@"Contains all the source code for the project.";
        
        labelanswer1.text=@"Gen";
        
        labelanswer2.text=@"Src";//
        
        labelanswer3.text=@"Drawable folders:";
        
        labelanswer4.text=@"Values";
        
        [self setQuestionNumber:6];
        
    }
    
    
    
    if ([sender tag]==7) {
        
        question.text=@"It is the browser engine used to display HTML content";
        
        labelanswer1.text=@"WebKit";//
        
        labelanswer2.text=@"OpenGL";
        
        labelanswer3.text=@"SharePreferences";
        
        labelanswer4.text=@"Surface Manager";
        
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
     
     */switch (contador1) {
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
    contador1=contador1+1;
    switch (contador1) {
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
            
            [self correctAnswer];
            
        }
        
        
        
    }
    
    
    
    if ([sender tag] ==2 ) {
        
        
        
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
            
            [self correctAnswer];
            
        }
        
        //question 7
        
        if (questionNumber==7) {
            
            [self wrongAnswer];
            
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
    
    
    
    if ([sender tag] ==4) {
        
        //answer D
        
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
            
            [self wrongAnswer];
            
        }
        
        
        
    }
    
    
    
    NSString * answerChosen=[sender titleForState:UIControlStateNormal];
    
    NSLog(@"answer chosen= %@",answerChosen);
    
    
 //   [self updatelaberls];
    
    
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
