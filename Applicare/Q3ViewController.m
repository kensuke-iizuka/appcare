//
//  Q3ViewController.m
//  Applicare
//
//  Created by InoueYuta on 2014/08/13.
//  Copyright (c) 2014年 InoueYuta. All rights reserved.
//

#import "Q3ViewController.h"

@interface Q3ViewController ()

@end

@implementation Q3ViewController

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
    [super viewDidLoad];
    nextBtn.enabled = NO;
    self.datePickerView = [[UIView alloc]initWithFrame:CGRectMake(0, self.view.frame.size.height, 768, 768)];
    [self.datePickerView setAlpha:0.95];
    [self.datePickerView setBackgroundColor:[UIColor whiteColor]];
    [self.view addSubview:self.datePickerView];
    
    UIButton* completeBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    [completeBtn setFrame:CGRectMake(608, 6, 50, 18)];
    [completeBtn setTitle:@"確定" forState:UIControlStateNormal];
    [completeBtn.titleLabel setFont:[UIFont boldSystemFontOfSize:18]];
    [completeBtn addTarget:self action:@selector(decideDate:) forControlEvents:UIControlEventTouchUpInside];
    [self.datePickerView addSubview:completeBtn];
    
    
    self.datePicker = [[UIDatePicker alloc]initWithFrame:CGRectMake(0, 50, 768, 768)];
    [self.datePicker setBackgroundColor:[UIColor whiteColor]];
    [self.datePickerView addSubview:self.datePicker];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)nextView:(id)sender{
    if ([self check]) {
        [self performSegueWithIdentifier:@"q3" sender:self];
    }
}

-(IBAction)backView:(id)sender{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)decideDate:(UIButton*)sender {
    NSDateFormatter* formatter = [[NSDateFormatter alloc]init];
    [formatter setDateFormat:@"yyyy年M月d日"];
    dateLabel.text = [formatter stringFromDate:self.datePicker.date];
    dateLabel.textColor = [UIColor colorWithRed:0.165 green:0.224 blue:0.290 alpha:1];
    [UIView animateWithDuration:0.5 animations:^{
        [self.datePickerView setFrame:CGRectMake(0, self.view.frame.size.height, 768, 300)];
    }];
    nextBtn.enabled = YES;
}

- (IBAction)showDatePicker:(id)sender {
    [self.datePicker setDatePickerMode:UIDatePickerModeDate];
    [self.datePicker setMinimumDate:[NSDate date]];
    
    [UIView animateWithDuration:0.5 animations:^{
        [self.datePickerView setFrame:CGRectMake(0, self.view.frame.size.height-500, 768, 768)];
    }];
}

-(BOOL)check{
    if(![dateLabel.text isEqualToString:@"生年月日を選択"]){
        return YES;
    } else {
        [self makeAlert:@"生年月日を選択" :@"生年月日を選択してください"];
        return NO;
    }
}

-(void)makeAlert:(NSString*)title :(NSString*)text{
    UIAlertView* alert = [[UIAlertView alloc]initWithTitle:title message:text delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alert show];
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

@end
