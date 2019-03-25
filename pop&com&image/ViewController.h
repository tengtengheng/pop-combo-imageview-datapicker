//
//  ViewController.h
//  pop&com&image
//
//  Created by mx1614 on 3/25/19.
//  Copyright © 2019 ludy. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController<NSComboBoxDataSource, NSComboBoxDelegate>

@property (weak) IBOutlet NSDatePicker *datePick;

@property (weak) IBOutlet NSComboBox *combox;
@property (weak) IBOutlet NSPopUpButton *popup;
@property (weak) IBOutlet NSImageView *imageview;

@end

