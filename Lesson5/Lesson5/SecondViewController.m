//
//  SecondViewController.m
//  Lesson5
//
//  Created by Олег Алексеев on 12.10.2023.
//

#import "SecondViewController.h"

@interface SecondViewController ()
@property (weak, nonatomic) IBOutlet UITextField *param1TextField;
@property (weak, nonatomic) IBOutlet UITextField *param2TextField;
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.loader = [Loader new];

    _textView.editable = NO;
}

- (void)performLoadingWithPostRequest {
    [self.loader performPostRequestFromUrl:@"https://postman-echo.com/post" 
                                 arguments:@{@"param3": _param1TextField.text, @"param4": _param2TextField.text}
                                completion:^(NSDictionary *jsonData, NSError *error) {
        dispatch_async(dispatch_get_main_queue(), ^{
            if (error) {
                NSLog(@"Error: %@", error);
                return;
            }

            NSString * stringFromJson = [NSString stringWithFormat:@"%@", jsonData];
            [self.textView insertText:stringFromJson];
        });
    }];

    [self.view endEditing:YES];
}

- (IBAction)postRequestTapped:(UIButton *)sender {
    [self performLoadingWithPostRequest];
}

@end
