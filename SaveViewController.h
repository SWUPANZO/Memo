//
//  SaveViewController.h
//  Memo2
//
//  Created by 앨리스 on 2017. 5. 6..
//  Copyright © 2017년 앨리스. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SaveViewController : UIViewController <UITextFieldDelegate>
@property (strong, nonatomic) IBOutlet UITextView *textMemo;

- (IBAction)savePressed:(UIBarButtonItem *)sender;
- (BOOL) textFieldShouldReturn:(UITextField *)textField;

@end
