//
//  Q2ViewController.h
//  Applicare
//
//  Created by InoueYuta on 2014/08/13.
//  Copyright (c) 2014年 InoueYuta. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Q2ViewController : UIViewController{
    IBOutlet UILabel* qLabel;
    IBOutlet UIButton* maleBtn;
    IBOutlet UIButton* femaleBtn;
    IBOutlet UIButton* nextBtn;
}
@property int selectedNum;
@end
