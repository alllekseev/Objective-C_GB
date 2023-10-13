//
//  SecondViewController.h
//  Lesson5
//
//  Created by Олег Алексеев on 12.10.2023.
//

#import <UIKit/UIKit.h>
#import "Loader.h"

NS_ASSUME_NONNULL_BEGIN

@interface SecondViewController : UIViewController

@property(nonatomic) Loader *loader;

- (void)performLoadingWithPostRequest;

@end

NS_ASSUME_NONNULL_END
