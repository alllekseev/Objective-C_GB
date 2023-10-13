//
//  ViewController.h
//  Lesson5
//
//  Created by Олег Алексеев on 12.10.2023.
//

#import <UIKit/UIKit.h>
#import "Loader.h"

@interface ViewController : UIViewController

@property(nonatomic) Loader *loader;

- (void)performLoadingWithGetRequest;

@end

