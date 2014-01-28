//
//  VENViewController.m
//  LucasIsAMeme
//
//  Created by dasmer on 1/27/14.
//  Copyright (c) 2014 Columbia University. All rights reserved.
//

#import "LUVCreateMemeViewController.h"
#import "UIColor+VenmoCustomColors.h"
#import "UIView+LUVImageRepresentation.h"

@interface LUVCreateMemeViewController ()
@property (weak, nonatomic) IBOutlet UITextField *firstLineField;
@property (weak, nonatomic) IBOutlet UITextField *secondLineField;
@property (weak, nonatomic) IBOutlet UITextField *thirdLineField;
@property (weak, nonatomic) IBOutlet UIButton *shareButton;
@property (weak, nonatomic) IBOutlet UIView *containerView;
@property (strong,nonatomic) UIGestureRecognizer *tap;
@property (strong,nonatomic) BSKeyboardControls *keyboardControls;
@property (strong,nonatomic) NSArray *fields;
@end

@implementation LUVCreateMemeViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"subway.jpg"]]];
    self.tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dropKeyboard)];
    self.fields = @[self.firstLineField, self.secondLineField, self.thirdLineField];
    [self configureKeyboardAndFields];
    [self configureShareButton];

}

#pragma mark - Configuration Methods
- (void) configureKeyboardAndFields{
    for (UITextField *textfield in self.fields){
        [textfield setDelegate:self];
        textfield.adjustsFontSizeToFitWidth = YES;
    }
    [self setKeyboardControls:[[BSKeyboardControls alloc] initWithFields:self.fields]];
    [self.keyboardControls setDelegate:self];
    [self.keyboardControls setTintColor:[UIColor venmoStandardColor]];
}

- (void) configureShareButton{
    [self.shareButton setBackgroundColor:[UIColor venmoStandardColor]];
    [self.shareButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
}

#pragma mark - UITextField Delegate
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    [self.view removeGestureRecognizer:self.tap];
    return YES;
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    [self.keyboardControls setActiveField:textField];
    [self.view addGestureRecognizer:self.tap];
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField == self.secondLineField){
        if ([string isEqualToString:[string uppercaseString]]){
            return YES;
        }
        else{
            return NO;
        }
    }
    else{
        return YES;
    }
}

#pragma mark - BSKeyboard Delegate Methods
- (void)keyboardControlsDonePressed:(BSKeyboardControls *)keyboardControls
{
    [keyboardControls.activeField resignFirstResponder];
}

#pragma mark - IBActions
- (IBAction)shareButtonClicked:(id)sender {
    UIActivityViewController *activityVC = [[UIActivityViewController alloc] initWithActivityItems:@[[self.containerView imageRepresentation]] applicationActivities:nil];
    [self presentViewController:activityVC animated:YES completion:nil];
}

#pragma mark - Custom Selectors
- (void) dropKeyboard{
    for ( UITextField *textField in self.fields){
        if ([textField isFirstResponder]){
            [textField endEditing:YES];
            break;
        }
    }
}

@end
