//
//  Q5ViewController.h
//  Applicare
//
//  Created by InoueYuta on 2014/08/13.
//  Copyright (c) 2014年 InoueYuta. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Q5ViewController : UIViewController{
    IBOutlet UILabel* qLabel;
    IBOutlet UIButton* yesBtn;
    IBOutlet UIButton* noBtn;
    IBOutlet UIButton* nextBtn;
}
@property int selectedNum;
@end
