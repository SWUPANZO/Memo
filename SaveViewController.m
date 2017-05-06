//
//  SaveViewController.m
//  Memo2
//
//  Created by 앨리스 on 2017. 5. 6..
//  Copyright © 2017년 앨리스. All rights reserved.
//

#import "SaveViewController.h"
#import <CoreData/CoreData.h>


@interface SaveViewController ()

@end

@implementation SaveViewController
@synthesize textMemo;


- (BOOL) textFieldShouldReturn: (UITextField *) textField {
    [textField resignFirstResponder];
    return YES; }


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)savePressed:(UIBarButtonItem *)sender {
    NSManagedObjectContext *context =nil;
    id delegate = [[UIApplication sharedApplication] delegate];
    if ([delegate performSelector:@selector(managedObjectContext)]) {
        context = [delegate managedObjectContext]; }
    
    NSManagedObject *newMemo = [NSEntityDescription
                                  insertNewObjectForEntityForName:@"Memos"
                                  inManagedObjectContext:context];

    [newMemo setValue:textMemo.text forKey:@"memo"];
    [newMemo setValue:[NSDate date] forKey:@"saveDate"];
    // save() method를 호출하여 자료를 저장함
    NSError *error = nil;
    // Save the context
    if (![context save:&error]) {
        NSLog(@"Save Failed! %@ %@", error, [error localizedDescription]); }
    // 이전 화면으로 복귀
    [self.navigationController popViewControllerAnimated:YES]; }  //화면이 싹 사라지면서 테이블뷰가 보여야함


@end
