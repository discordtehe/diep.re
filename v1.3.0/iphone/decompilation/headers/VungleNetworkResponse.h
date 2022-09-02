// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLENETWORKRESPONSE_H
#define VUNGLENETWORKRESPONSE_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface VungleNetworkResponse : NSObject

@property (nonatomic) CGFloat parsedHTTPRetryAfterTime; // ivar: _parsedHTTPRetryAfterTime
@property (retain, nonatomic) NSData *data; // ivar: _data
@property (nonatomic) NSInteger statusCode; // ivar: _statusCode
@property (copy, nonatomic) NSError *error; // ivar: _error
@property (copy, nonatomic) NSURL *requestURL; // ivar: _requestURL
@property (copy, nonatomic) NSURL *localDownloadURL; // ivar: _localDownloadURL
@property (nonatomic) NSUInteger attempts; // ivar: _attempts
@property (readonly) BOOL hasHTTPData;
@property (readonly) BOOL hasSuccessfulHTTPStatus;


-(id)initWithData:(id)arg0 statusCode:(NSInteger)arg1 ;
+(id)vungleNetworkResponseWithNSHTTPURLResponse:(id)arg0 ;


@end


#endif