//
//  Doctor.h
//  Lesson3
//
//  Created by Олег Алексеев on 09.10.2023.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol TakeAPillDelegate <NSObject>

@required
- (void)takeAPill:(NSString *)pill byPatient:(NSString *)patient;

@end

@interface Doctor : NSObject

@property(nonatomic, weak) id<TakeAPillDelegate> delegate;

@end

NS_ASSUME_NONNULL_END
