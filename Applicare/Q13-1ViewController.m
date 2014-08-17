//
//  Q13-1ViewController.m
//  Applicare
//
//  Created by InoueYuta on 2014/08/16.
//  Copyright (c) 2014年 InoueYuta. All rights reserved.
//

#import "Q13-1ViewController.h"

@interface Q13_1ViewController ()

@end

@implementation Q13_1ViewController

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
    switch (self.selectedNum) {
        case 1:
            [self performSegueWithIdentifier:@"q13-4" sender:self];
            break;
        case 2:
            [self performSegueWithIdentifier:@"q13-3" sender:self];
            break;
        case 3:
            [self performSegueWithIdentifier:@"q13-5" sender:self];
            break;
        case 4:
            [self performSegueWithIdentifier:@"q13-5" sender:self];
            break;
        case 5:
            [self performSegueWithIdentifier:@"q13-1" sender:self];
            break;
        case 6:
            [self performSegueWithIdentifier:@"q13-5" sender:self];
            break;
        case 7:
            [self performSegueWithIdentifier:@"q13-5" sender:self];
            break;
        case 8:
            [self performSegueWithIdentifier:@"q13-2" sender:self];
            break;
        default:
            break;
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