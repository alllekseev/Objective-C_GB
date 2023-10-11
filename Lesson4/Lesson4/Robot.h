//
//  Robot.h
//  Lesson4
//
//  Created by Олег Алексеев on 10.10.2023.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

//MARK: why is needed mark NSString additionally _Nonnull?
typedef NSString* _Nonnull  (^MoveTo)(void);

@interface Robot : NSObject

@property (nonatomic) int coordX;
@property (nonatomic) int coordY;

- (void)run:(MoveTo)moveTo;

@end

NS_ASSUME_NONNULL_END
