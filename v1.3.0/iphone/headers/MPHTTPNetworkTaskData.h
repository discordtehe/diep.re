// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPHTTPNETWORKTASKDATA_H
#define MPHTTPNETWORKTASKDATA_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface MPHTTPNetworkTaskData : NSObject

@property (retain, nonatomic) NSMutableData *responseData; // ivar: _responseData
@property (copy, nonatomic) id *responseHandler; // ivar: _responseHandler
@property (copy, nonatomic) id *errorHandler; // ivar: _errorHandler
@property (copy, nonatomic) id *shouldRedirectWithNewRequest; // ivar: _shouldRedirectWithNewRequest


-(id)init;
// -(id)initWithResponseHandler:(id)arg0 errorHandler:(unk)arg1 shouldRedirectWithNewRequest:(id)arg2  ;


@end


#endif