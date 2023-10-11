//
//  Robot.m
//  Lesson4
//
//  Created by Олег Алексеев on 10.10.2023.
//

#import "Robot.h"

@implementation Robot

-(id)init {
    self = [super init];
    if (self) {
        _coordX = 0;
        _coordY = 0;
    }
    return self;
}

// MARK why block returns reference on memory scope instead of value?
- (void)run:(MoveTo)moveTo {

    NSLog(@"x: %d, y: %d, %@", _coordX, _coordY, moveTo);
}

@end
