//
//  InstatwitViewController.h
//  InstaTwit
//
//  Created by Михаил Помахин on 19.07.14.
//  Copyright (c) 2014 Михаил Помахин. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InstatwitViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>
{
    NSArray *activities;
    NSArray *feelings;
}

@end
