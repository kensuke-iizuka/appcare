//
//  Q4ViewController.m
//  Applicare
//
//  Created by InoueYuta on 2014/08/13.
//  Copyright (c) 2014年 InoueYuta. All rights reserved.
//

#import "Q4ViewController.h"

@interface Q4ViewController ()

@end

@implementation Q4ViewController

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
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(keyboardWillShow:) name:UIKeyboardWillShowNotification object:nil];
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(keyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];
    // Do any additional setup after loading the view.
}

-(void)viewDidLayoutSubviews{
    [scrollView setContentSize:CGSizeMake(768, 960)];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)makeAlert:(NSString*)title :(NSString*)text{
    UIAlertView* alert = [[UIAlertView alloc]initWithTitle:title message:text delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alert show];
}

- (IBAction)jobEdit:(id)sender{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.3];
    [scrollView setContentSize:CGSizeMake(768, 960)];
    [scrollView setContentOffset:CGPointMake(0, 30)];
    [scrollView setScrollEnabled:NO];
    [UIView commitAnimations];
}

- (void)keyboardWillShow:(NSNotification*)notification {
    [removeKeyboardBtn setEnabled:YES];
}

- (void)keyboardWillHide:(NSNotification*)notification {
    [removeKeyboardBtn setEnabled:NO];
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.3];
    [scrollView setContentSize:CGSizeMake(768, 960)];
    [scrollView setContentOffset:CGPointMake(0, 0)];
    [scrollView setScrollEnabled:NO];
    [UIView commitAnimations];
}

-(IBAction)removeKeyboard:(id)sender{
    [self.view endEditing:YES];
}

-(BOOL)checkJob{
    NSString* inputText = [job_textfield.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    if(inputText.length <= 0){
        [self makeAlert:@"職業の入力" :@"職業を入力してください"];
        return NO;
    } else {
        return YES;
    }
}

-(IBAction)nextView:(id)sender{
    //if([self checkJob]){
    [self performSegueWithIdentifier:@"q4" sender:self];
    //}
}

-(IBAction)backView:(id)sender{
    [self.navigationController popViewControllerAnimated:YES];
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

@end
