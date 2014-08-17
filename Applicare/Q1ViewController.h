//
//  Q1ViewController.h
//  Applicare
//
//  Created by InoueYuta on 2014/08/13.
//  Copyright (c) 2014年 InoueYuta. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Q1ViewController : UIViewController{
    IBOutlet UILabel* q_label;
    IBOutlet UITextField* firstname_kana_textfield;
    IBOutlet UITextField* firstname_textfield;
    IBOutlet UITextField* lastname_kana_textfield;
    IBOutlet UITextField* lastname_textfield;
    IBOutlet UIButton* removeKeyboardBtn;
    IBOutlet UIScrollView* scrollView;
}

@end
