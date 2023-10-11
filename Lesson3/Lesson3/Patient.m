//
//  Patient.m
//  Lesson3
//
//  Created by Олег Алексеев on 09.10.2023.
//

#import "Patient.h"

@implementation Patient

- (instancetype)initName:(NSString *)name andPill:(NSString *)pill {
    self = [super init];
    if (self) {
        _name = name;
        _pill = pill;
    }
    return self;
}

- (void)takeAPill:(NSString *)pill byPatient:(NSString *)patient {
    NSLog(@"%@ said: I took the pill %@", _name, _pill);
}

@end
