// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADSERVERRESPONSE_H
#define GADSERVERRESPONSE_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface GADServerResponse : NSObject {
    NSDictionary *_configuration;
}


@property (readonly, nonatomic) NSDictionary *common;
@property (readonly, nonatomic) NSArray *adConfigurations;
@property (readonly, nonatomic) NSURLResponse *rawResponse; // ivar: _rawResponse
@property (readonly, nonatomic) NSData *rawResponseData; // ivar: _rawResponseData


-(id)initWithConfiguration:(id)arg0 response:(id)arg1 responseBody:(id)arg2 ;


@end


#endif