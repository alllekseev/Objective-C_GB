//
//  Shapes.m
//  Lesson2
//
//  Created by Олег Алексеев on 09.10.2023.
//

#import "Shapes.h"

// MARK: - Rectangle
@implementation Rectangle

-(instancetype)initWidth:(double)width andHeight:(double)height {
    self = [super self];
    if (self) {
        _width = width;
        _height = height;
    }
    return self;
}

- (double)calculateArea { 
    return _width * _height;
}

- (double)calculatePerimeter { 
    return (_width + _height) * 2;
}

- (void)getInfoAboutShape { 
    NSLog(@"Rectangle with height %f and width %f.\nPerimeter is %f.\nArea is %f", 
          _height,
          _width,
          self.calculateArea,
          self.calculatePerimeter);
}


@end

// MARK: - Circle
@implementation Circle

- (instancetype)initRadius:(double)radius {
    self = [super init];
    if (self) {
        _radius = radius;
    }
    return self;
}

- (double)calculateArea { 
    return M_PI * (_radius * _radius);
}

- (double)calculatePerimeter { 
    return 2 * M_PI * _radius;
}

- (void)getInfoAboutShape { 
    NSLog(@"Circle with radius %f.\nPerimeter is %f.\nArea is %f",
          _radius,
          self.calculateArea,
          self.calculatePerimeter);
}



@end

// MARK: - Triangle
@implementation Triangle

- (instancetype)initSideA:(double)sideA andSideB:(double)sideB andSideC:(double)sideC {
    self = [super init];
    if (self) {
        _sideA = sideA;
        _sideB = sideB;
        _sideC = sideC;
    }
    return self;
}

- (double)calculateArea { 
    double semiPerimeter = self.calculatePerimeter / 2;
    return sqrt(semiPerimeter * (semiPerimeter - _sideA) * (semiPerimeter - _sideB) * (semiPerimeter - _sideC));
}

- (double)calculatePerimeter { 
    return _sideA + _sideB + _sideC;
}

- (void)getInfoAboutShape {
    NSLog(@"Triangle with sideA %f and sideB %f and sideC %f.\nPerimeter is %f.\nArea is %f",
          _sideA,
          _sideB,
          _sideC,
          self.calculateArea,
          self.calculatePerimeter);
}

@end
