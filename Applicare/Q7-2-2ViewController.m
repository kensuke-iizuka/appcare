//
//  Q7-2-2ViewController.m
//  Applicare
//
//  Created by InoueYuta on 2014/08/16.
//  Copyright (c) 2014年 InoueYuta. All rights reserved.
//

#import "Q7-2-2ViewController.h"

@interface Q7_2_2ViewController ()

@end

@implementation Q7_2_2ViewController

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
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)nextView:(id)sender{
    [self performSegueWithIdentifier:@"q8" sender:self];
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
