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
    _technologys = [[ NSArray alloc] initWithObjects:@"IOS", @"Cognos",@"Android",@"web",@"java", nil];
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
            break;
        case 1:
            TipoSegue=1;
            _TextView.text=@"Cognos is IBM's business intelligence (BI) and performance management software suite. The software is designed to enable business users without technical knowledge to extract corporate data, analyze it and assemble reports.";
            break;
        case 2:
            TipoSegue=2;
            _TextView.text=@"Android is a Linux-based mobile phone operating system developed by Google. Android is unique because Google is actively developing the platform but giving it away for free to hardware manufacturers and phone carriers who want to use Android on their devices.";
            break;
        case 3:
            TipoSegue=3;
            _TextView.text=@"Web development is a broad term for the work involved in developing a web site for the Internet  or an intranet. Web development can range from developing the simplest static single page of plain text to the most complex web-based internet applications, electronic businesses, and social network services.";
            break;
        case 4:
            TipoSegue=4;
            _TextView.text=@"Java is a programming language and computing platform first released by Sun Microsystems in 1995. There are lots of applications and websites that will not work unless you have Java installed, and more are created every day. Java is fast, secure, and reliable. From laptops to datacenters, game consoles to scientific supercomputers, cell phones to the Internet, Java is everywhere!.";
            break;
            
        default:
            break;
    }
}





- (IBAction)start:(id)sender {
    switch (TipoSegue) {
        case 0:
            [self performSegueWithIdentifier:@"iosSegue" sender:self];
            break;
            
        default:
            break;
    }
}
@end
