//
//  DetailViewController.h
//  Memo2
//
//  Created by 앨리스 on 2017. 5. 6..
//  Copyright © 2017년 앨리스. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface DetailViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextView *textMemo;
@property (strong, nonatomic) IBOutlet UITextField *saveDate;

@property (strong, nonatomic) NSManagedObject *detailMemo;

@end
