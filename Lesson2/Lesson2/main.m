//
//  main.m
//  Lesson2
//
//  Created by Олег Алексеев on 09.10.2023.
//

#import <Foundation/Foundation.h>
#import "Shapes.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Shape *rectangle = [[Rectangle alloc] initWidth:2 andHeight:4];
        Shape *circle = [[Circle alloc] initRadius:8];
        Shape *triangle = [[Triangle alloc] initSideA:4 andSideB:4 andSideC:4];

        NSArray<Shape *> *shapesArr = @[rectangle, circle, triangle];

        for (int i = 0; i <shapesArr.count; i++) {
            [shapesArr[i] getInfoAboutShape];
        }
    }
    return 0;
}
