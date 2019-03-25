//
//  ViewController.m
//  pop&com&image
//
//  Created by mx1614 on 3/25/19.
//  Copyright © 2019 ludy. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController{
    NSMutableArray *mutarry;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    mutarry = [NSMutableArray arrayWithObjects:@"one", @"two", @"three",nil];
    NSDate *date = self.datePick.dateValue;
    NSLog(@"date = %@", date);
//    [self.combox removeAllItems];
//    [self.combox addItemsWithObjectValues:mutarry];
    [self.combox selectItemAtIndex:2];
    [self.popup removeAllItems];
    [self.popup addItemsWithTitles:mutarry];
   
    NSImageView *imageview = [[NSImageView alloc] initWithFrame:NSMakeRect(50, 50, 100, 100)];
    [imageview setImage:[NSImage imageNamed:@"1"]];
    imageview.imageScaling = NSImageScaleAxesIndependently;
    [self.view addSubview:imageview];
    
    
}

- (IBAction)handletime:(NSDatePicker *)sender {
    
}


- (NSInteger)numberOfItemsInComboBox:(NSComboBox *)comboBox
{
    
    return 20;
}

- (nullable id)comboBox:(NSComboBox *)comboBox objectValueForItemAtIndex:(NSInteger)index
{
 
    return [NSString stringWithFormat:@"这是第%ld个元素", index + 1];
}

- (NSUInteger)comboBox:(NSComboBox *)comboBox indexOfItemWithStringValue:(NSString *)string
{
    return self.combox.indexOfSelectedItem;
}

- (nullable NSString *)comboBox:(NSComboBox *)comboBox completedString:(NSString *)string
{
    return @"example string";
}


- (void)comboBoxWillPopUp:(NSNotification *)notification
{
    
}
- (void)comboBoxWillDismiss:(NSNotification *)notification
{
    
}

- (void)comboBoxSelectionDidChange:(NSNotification *)notification
{
//    NSLog(@"choose item = %@", self.combox.objectValueOfSelectedItem);
    NSUInteger n = self.combox.indexOfSelectedItem;
    NSLog(@"n = %ld", n);
//    NSString *str = [self.combox itemObjectValueAtIndex:n];
//    NSLog(@"str = %@", str);
}

- (void)comboBoxSelectionIsChanging:(NSNotification *)notification
{
    
}

- (IBAction)popup:(NSPopUpButton *)sender {
    
}

- (IBAction)handlebutton:(NSButton *)sender {
    if ([sender.title isEqualToString:@"插入"]) {
        [self.popup insertItemWithTitle:@"这是插入的一个item" atIndex:1];
    }else{
        [self.popup removeItemAtIndex:0];
    }
}

- (IBAction)clickItem:(NSPopUpButton *)sender {
    switch (sender.indexOfSelectedItem) {
        case 0:
            
            break;
        case 1:
            break;
        case 2:
            break;
            
        default:
            break;
    }
}






- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];
   
}


@end
