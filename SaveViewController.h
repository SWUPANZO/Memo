//
//  SaveViewController.h
//  Memo2
//
//  Created by 앨리스 on 2017. 5. 6..
//  Copyright © 2017년 앨리스. All rights reserved.
//

#import <UIKit/UIKit.h>
@import Firebase;

@interface SaveViewController : UIViewController <UITextFieldDelegate>{
NSArray *array;
}

@property (strong, nonatomic) IBOutlet UITextView *textMemo;
@property (strong, nonatomic) FIRDatabaseReference *ref;
@property (strong, nonatomic) FIRAuth *handle;

- (IBAction)savePressed:(UIBarButtonItem *)sender;
- (BOOL) textFieldShouldReturn:(UITextField *)textField;

@end
