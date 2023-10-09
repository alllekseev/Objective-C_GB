//
//  Shapes.h
//  Lesson2
//
//  Created by Олег Алексеев on 09.10.2023.
//

#import <Foundation/Foundation.h>
#import "ShapeBase.h"

NS_ASSUME_NONNULL_BEGIN

typedef ShapeBase<ShapeBehavior> Shape;

//MARK: - Rectangle
@interface Rectangle : Shape {

    @private double _width;
    @private double _height;

}

-(instancetype)initWidth:(double)width andHeight:(double)height;

@end

//MARK: - Circle
@interface Circle : Shape {

    @private double _radius;

}

-(instancetype)initRadius:(double)radius;

@end

//MARK: - Triangle
@interface Triangle : Shape {

    @private double _sideA;
    @private double _sideB;
    @private double _sideC;

}

-(instancetype)initSideA:(double)sideA andSideB:(double)sideB andSideC:(double)sideC;

@end

NS_ASSUME_NONNULL_END
