//
//  ShapeBase.h
//  Lesson2
//
//  Created by Олег Алексеев on 09.10.2023.
//

#import <Foundation/Foundation.h>

@protocol ShapeBehavior <NSObject>

-(double)calculatePerimeter;
-(double)calculateArea;
-(void)getInfoAboutShape;

@end

NS_ASSUME_NONNULL_BEGIN

@interface ShapeBase : NSObject {}
@end

NS_ASSUME_NONNULL_END
