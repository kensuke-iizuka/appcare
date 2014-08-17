//
//  Q7-1ViewController.m
//  Applicare
//
//  Created by InoueYuta on 2014/08/16.
//  Copyright (c) 2014年 InoueYuta. All rights reserved.
//

#import "Q7-1ViewController.h"

@interface Q7_1ViewController ()

@end

@implementation Q7_1ViewController

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

-(IBAction)Select:(UIButton*)sender{
    self.selectedNum = sender.tag;
    nextBtn.enabled = YES;
}

-(IBAction)nextView:(id)sender{
    if(self.selectedNum==1){
        [self performSegueWithIdentifier:@"q7-1-y" sender:self];
    } else if(self.selectedNum==2) {
        [self performSegueWithIdentifier:@"q8" sender:self];
    }
}

-(IBAction)backView:(id)sender{
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
