//
//  main.m
//  Lesson1
//
//  Created by Олег Алексеев on 02.10.2023.
//

#import <Foundation/Foundation.h>
#include "math.h"

NSMutableArray* quadratic(double a, double b, double c) {
    
    NSMutableArray *resultArr = [NSMutableArray array];

    double d = pow(b, 2.0) - 4 * a * c;

    if (d < 0) {
        return resultArr;
    }

    if (d > 0) {
        double x1 = (-b + sqrt(d)) / (2 * a);
        double x2 = (-b - sqrt(d)) / (2 * a);
        [resultArr addObject:[NSNumber numberWithDouble:x1]];
        [resultArr addObject:[NSNumber numberWithDouble:x2]];
    } else if (d == 0) {
        double x = (-b + sqrt(d)) / (2 * a);
        [resultArr addObject:[NSNumber numberWithDouble:x]];
    }

    return resultArr;
};

// -----------------

int findMax(int *arr) {
    int max = arr[0];

    for (int i = 1; i <=2; ++i) {
        if (arr[i] > max ){
            max = arr[i];
        }
    }
    return max;
}

// -----------------

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"quadratic equation 1: %@", quadratic(1, -8, 12));
        NSLog(@"quadratic equation 2: %@", quadratic(12, -4, 2));
        NSLog(@"quadratic equation 3: %@", quadratic(1, -100, -2));

        int arr[3] = {5, -1, 4};
        NSLog(@"%d", *(arr + 3));
        NSLog(@"max number in arr is: %d", findMax(arr));
    }
    return 0;
}


