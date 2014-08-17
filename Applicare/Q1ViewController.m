//
//  Q1ViewController.m
//  Applicare
//
//  Created by InoueYuta on 2014/08/13.
//  Copyright (c) 2014年 InoueYuta. All rights reserved.
//

#import "Q1ViewController.h"

@interface Q1ViewController ()

@end

@implementation Q1ViewController

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
}

-(void)viewDidLayoutSubviews{
    [scrollView setContentSize:CGSizeMake(768, 960)];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)checkFirstKana{
    NSString* inputText = [firstname_kana_textfield.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    if(inputText.length <= 0){
        [self makeAlert:@"名前のフリガナを入力" :@"名前のフリガナを入力してください"];
        return NO;
    } else {
        return YES;
    }
}

-(BOOL)checkFirst{
    NSString* inputText = [firstname_textfield.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    if(inputText.length <= 0){
        [self makeAlert:@"名前の入力" :@"名前を入力してください"];
        return NO;
    } else {
        return YES;
    }
}

-(BOOL)checkLastKana{
    NSString* inputText = [lastname_kana_textfield.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    if(inputText.length <= 0){
        [self makeAlert:@"名字のフリガナの入力" :@"名字のフリガナを入力してください"];
        return NO;
    } else {
        return YES;
    }
}

-(BOOL)checkLast{
    NSString* inputText = [lastname_textfield.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    if(inputText.length <= 0){
        [self makeAlert:@"名字の入力" :@"名字を入力してください"];
        return NO;
    } else {
        return YES;
    }
}

-(void)makeAlert:(NSString*)title :(NSString*)text{
    UIAlertView* alert = [[UIAlertView alloc]initWithTitle:title message:text delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alert show];
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


- (IBAction)firstKanaEdit:(id)sender{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.3];
    [scrollView setContentSize:CGSizeMake(768, 960)];
    [scrollView setContentOffset:CGPointMake(0, 30)];
    [scrollView setScrollEnabled:NO];
    [UIView commitAnimations];
}

- (IBAction)firstEdit:(id)sender{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.3];
    [scrollView setContentSize:CGSizeMake(768, 960)];
    [scrollView setContentOffset:CGPointMake(0, 0)];
    [scrollView setScrollEnabled:NO];
    [UIView commitAnimations];
}

- (IBAction)lastKanaEdit:(id)sender{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.3];
    [scrollView setContentSize:CGSizeMake(768, 960)];
    [scrollView setContentOffset:CGPointMake(0, 90)];
    [scrollView setScrollEnabled:NO];
    [UIView commitAnimations];
}

- (IBAction)lastEdit:(id)sender{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.3];
    [scrollView setContentSize:CGSizeMake(768, 960)];
    [scrollView setContentOffset:CGPointMake(0, 60)];
    [scrollView setScrollEnabled:NO];
    [UIView commitAnimations];
}

-(IBAction)removeKeyboard:(id)sender{
    [self.view endEditing:YES];
}

-(IBAction)nextView:(id)sender{
    //if([self checkFirstKana]&&[self checkFirst]&&[self checkLastKana]&&[self checkLast]){
        [self performSegueWithIdentifier:@"q1" sender:self];
    //}
}

-(IBAction)backView:(id)sender{
    
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

@end
