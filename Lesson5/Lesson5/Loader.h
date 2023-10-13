//
//  Loader.h
//  Lesson5
//
//  Created by Олег Алексеев on 12.10.2023.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Loader : NSObject

@property(nonatomic) NSURLSession *session;

-(void)performGetRequestFromUrl:(NSString *)stringUrl arguments:(NSDictionary *)arguments completion:(void (^)(NSDictionary *, NSError *))completion;
-(void)performPostRequestFromUrl:(NSString *)stringUrl arguments:(NSDictionary *)arguments completion:(void (^)(NSDictionary *, NSError *))completion;

-(NSDictionary *)parseJsonData:(NSData *)data error:(NSError **)error;
-(NSData *)dataWithJson:(NSDictionary *)jsonDict error:(NSError **)error;

@end

NS_ASSUME_NONNULL_END
