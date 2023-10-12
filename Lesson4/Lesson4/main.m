//
//  main.m
//  Lesson4
//
//  Created by Олег Алексеев on 10.10.2023.
//

#import <Foundation/Foundation.h>
#import "Robot.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        Robot *robot = [[Robot alloc] init];

        NSString* (^up)(void) = ^NSString* (void) {
            return @"up";
        };

        NSString* (^down)(void) = ^NSString* (void) {
            return @"down";
        };

        NSString* (^left)(void) = ^NSString* (void) {
            return @"left";
        };

        NSString* (^right)(void) = ^NSString* (void) {
            return @"right";
        };

        [robot run:right];
        [robot run:up];
        [robot run:up];
        [robot run:left];
        [robot run:down];
        [robot run:down];

    }
    return 0;
}
