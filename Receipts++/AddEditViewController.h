//
//  AddTodoViewController.h
//  Every.Do
//
//  Created by Alp Eren Can on 08/09/15.
//  Copyright © 2015 Alp Eren Can. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CoreDataStack.h"
#import "Receipt.h"
#import "Strings.h"

@interface AddEditViewController : UIViewController

@property (strong, nonatomic) CoreDataStack *stack;
@property (strong, nonatomic) Receipt *receipt;

@end
