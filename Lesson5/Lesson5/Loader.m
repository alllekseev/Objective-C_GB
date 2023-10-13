//
//  Loader.m
//  Lesson5
//
//  Created by Олег Алексеев on 12.10.2023.
//



// TODO: add .gitignore
#import "Loader.h"

@implementation Loader

-(NSURLSession *)session {
    if (!_session) {
        NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
        configuration.HTTPAdditionalHeaders = @{@"Content-Type" : @"application/json",
                                                @"Accept": @"application/json",
                                                @"User-Agent": @"iPhone 15 Pro Max"};
        _session = [NSURLSession sessionWithConfiguration:configuration];
    }
    return _session;
}

- (void)performGetRequestFromUrl:(NSString *)stringUrl
                       arguments:(NSDictionary *)arguments
                      completion:(void (^)(NSDictionary *, NSError *))completion {
    NSURLComponents *urlComponents = [NSURLComponents componentsWithString:stringUrl];
    if (arguments) {
        NSMutableArray<NSURLQueryItem *> *queryItems = [NSMutableArray new];
        for (NSString *key in arguments.allKeys) {
            [queryItems addObject: [NSURLQueryItem queryItemWithName:key value:arguments[key]]];
        }
        urlComponents.queryItems = [queryItems copy];
    }
    NSURL *url = urlComponents.URL;

    NSURLSessionDataTask *dataTask = [self.session dataTaskWithURL:url
                                                 completionHandler:^(NSData *data,
                                                                     NSURLResponse *response,
                                                                     NSError *error) {
        if (error) {
            completion(nil, error);
            return;
        }

        NSError *parsingError;

        NSDictionary *dictionary = [self parseJsonData:data error:&parsingError];

        if (parsingError) {
            completion(nil, parsingError);
            return;
        }

        completion(dictionary, nil);

    }];

    [dataTask resume];
}

- (void)performPostRequestFromUrl:(NSString *)stringUrl
                        arguments:(NSDictionary *)arguments
                       completion:(void (^)(NSDictionary *, NSError *))completion {

    NSURL *url = [NSURL URLWithString:stringUrl];
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] initWithURL:url];
    request.HTTPMethod = @"POST";

    if (arguments) {
        NSData *body = [self dataWithJson:arguments error:nil];
        request.HTTPBody = body;
    }

    NSURLSessionDataTask *dataTask = [self.session dataTaskWithRequest:request
                                                     completionHandler:^(NSData * _Nullable data,
                                                                         NSURLResponse * _Nullable response,
                                                                         NSError * _Nullable error) {
        if (error) {
            completion(nil, error);
            return;
        }

        NSError *parsingError;

        NSDictionary *dictionary = [self parseJsonData:data error:&parsingError];

        if (parsingError) {
            completion(nil, parsingError);
            return;
        }

        completion(dictionary, nil);
    }];

    [dataTask resume];
}

- (NSDictionary *)parseJsonData:(NSData *)data error:(NSError **)error {
    return [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:error];
}

- (NSData *)dataWithJson:(NSDictionary *)jsonDict error:(NSError **)error {
    return [NSJSONSerialization dataWithJSONObject:jsonDict options:kNilOptions error:error];
}


@end
