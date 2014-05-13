//
//  ViewController.m
//  whatTosay
//
//  Created by Mac User on 5/6/14.
//  Copyright (c) 2014 systemsusa. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize technologys= _technologys;
int TipoSegue;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _technologys = [[ NSArray alloc] initWithObjects:@"IOS", @"Java",@"Android", nil];
  }

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark picker view

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    
    return _technologys.count;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return [_technologys objectAtIndex:row];
    
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    switch (row) {
        case 0:
            TipoSegue=0;
        
        
             _TextView.text=@"IOS (previously iPhone OS) is a mobile operating system developed by Apple Inc. and distributed exclusively for Apple hardware.";
              _TextView.font=[UIFont fontWithName:@"Avenir Next" size:14];
            break;
        case 1:
            TipoSegue=1;
           
            _TextView.text=@"Java is a programming language and computing platform first released by Sun Microsystems in 1995. There are lots of applications and websites that will not work unless you have Java installed, and more are created every day. Java is fast, secure, and reliable. From laptops to datacenters, cell phones to the Internet, Java is everywhere!.";
            _TextView.font=[UIFont fontWithName:@"Avenir Next" size:14];
            break;
        case 2:
            TipoSegue=2;
            _TextView.text=@"Android is a Linux-based mobile phone operating system developed by Google. Android is unique because Google is actively developing the platform but giving it away for free to hardware manufacturers and phone carriers who want to use Android on their devices.";
             _TextView.font=[UIFont fontWithName:@"Avenir Next" size:14];
            break;
     
           
            
        default:
            break;
    }
}



-(void)howtoplay:(id)sender{
    NSString *cadena=@"To start playing select one technology and press start, then you need to select the first level, then select the correct answer, you can not advance in level without correctly answering the current level.                            When you select your level will run your time, The faster you answer more points earn!, but will lose points if you answer incorrectly.";
    UIAlertView * howToPlayAlert= [[ UIAlertView alloc] initWithTitle:@"HOW TO PLAY" message:cadena
 delegate:self cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
    [  howToPlayAlert show];
    
}

- (IBAction)start:(id)sender {
    switch (TipoSegue) {
        case 0:
            [self performSegueWithIdentifier:@"iosSegue" sender:self];
            break;
        case 1:
            [self performSegueWithIdentifier:@"cognosSegue" sender:self];
            break;
            
        case 2:
            [self performSegueWithIdentifier:@"androidSegue" sender:self];
            break;
            
        default:
            break;
    }
}
@end
