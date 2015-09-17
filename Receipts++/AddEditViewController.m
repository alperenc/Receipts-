//
//  AddTodoViewController.m
//  Every.Do
//
//  Created by Alp Eren Can on 08/09/15.
//  Copyright © 2015 Alp Eren Can. All rights reserved.
//

#import "AddEditViewController.h"

@interface AddEditViewController () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *amountTextField;
@property (weak, nonatomic) IBOutlet UITextField *descriptionTextField;

@end

@implementation AddEditViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if (self.receipt) {
        self.amountTextField.text = [NSString stringWithFormat:@"%.2f", self.receipt.amount];
        self.descriptionTextField.text = self.receipt.desc;
    }
    
    UIBarButtonItem *cancelButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCancel target:self action:@selector(dismiss)];
    self.navigationItem.leftBarButtonItem = cancelButton;
    
    UIBarButtonItem *doneButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(addReceipt)];
    self.navigationItem.rightBarButtonItem = doneButton;
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    return [textField resignFirstResponder];
}

-(void)dismiss {
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)addReceipt {
    if (!self.receipt) {
        self.receipt = [NSEntityDescription insertNewObjectForEntityForName:RECEIPT inManagedObjectContext:self.stack.managedObjectContext];
    }
    
    self.receipt.amount = [self.amountTextField.text floatValue];
    self.receipt.desc = self.descriptionTextField.text;
    
    [self.stack saveContext];

    [self dismiss];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
