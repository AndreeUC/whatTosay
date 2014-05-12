//
//  ViewController.h
//  whatTosay
//
//  Created by Mac User on 5/6/14.
//  Copyright (c) 2014 systemsusa. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
<UIPickerViewDataSource, UIPickerViewDelegate>
@property (strong, nonatomic) IBOutlet UIPickerView *PickerView;
@property (strong, nonatomic) NSArray * technologys;
@property (strong, nonatomic) IBOutlet UILabel *SelecTech;
@property (strong, nonatomic) IBOutlet UITextView *TextView;

- (IBAction)start:(id)sender;
-(IBAction)howtoplay:(id)sender;
@end
