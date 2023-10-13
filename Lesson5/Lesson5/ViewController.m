//
//  ViewController.m
//  Lesson5
//
//  Created by Олег Алексеев on 12.10.2023.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.loader = [Loader new];
    _textView.editable = NO;

    [self performLoadingWithGetRequest];
}


- (void)performLoadingWithGetRequest {
    [self.loader performGetRequestFromUrl:@"https://postman-echo.com/get"
                                arguments:@{@"foo1": @"bar", @"foo2": @"bar2"}
                               completion:^(NSDictionary * jsonData, NSError * error) {
        dispatch_async(dispatch_get_main_queue(), ^{
            if (error) {
                NSLog(@"Error: %@", error);
                return;
            }

            NSString * stringFromJson = [NSString stringWithFormat:@"%@", jsonData];
            [self.textView insertText:stringFromJson];
        });
    }];
}

@end
