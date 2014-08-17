//
//  Q2ViewController.m
//  Applicare
//
//  Created by InoueYuta on 2014/08/13.
//  Copyright (c) 2014年 InoueYuta. All rights reserved.
//

#import "Q2ViewController.h"

@interface Q2ViewController ()

@end

@implementation Q2ViewController

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
    self.selectedNum = 0;
    nextBtn.enabled = NO;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)genderSelect:(UIButton*)sender{
    self.selectedNum = sender.tag;
    nextBtn.enabled = YES;
}

-(IBAction)nextView:(id)sender{
    if([self check]){
        [self performSegueWithIdentifier:@"q2" sender:self];
    }
}

-(IBAction)backView:(id)sender{
}

-(BOOL)check{
    if(self.selectedNum!=0){
        return YES;
    } else {
        [self makeAlert:@"性別の選択" :@"性別を選択してください"];
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
