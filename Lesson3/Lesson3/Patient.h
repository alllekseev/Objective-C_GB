//
//  Patient.h
//  Lesson3
//
//  Created by Олег Алексеев on 09.10.2023.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"

NS_ASSUME_NONNULL_BEGIN

@interface Patient : NSObject<TakeAPillDelegate>

@property(nonatomic, readonly) NSString *name;
@property(nonatomic) NSString *pill;

- (instancetype)initName:(NSString *)name andPill:(NSString *)pill;


@end

NS_ASSUME_NONNULL_END
