//
//  Q3ViewController.h
//  Applicare
//
//  Created by InoueYuta on 2014/08/13.
//  Copyright (c) 2014年 InoueYuta. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Q3ViewController : UIViewController{
    IBOutlet UILabel* dateLabel;
    IBOutlet UIButton* nextBtn;
}
@property(nonatomic,retain)UIDatePicker* datePicker;
@property(nonatomic,retain)UIView* datePickerView;
@end
