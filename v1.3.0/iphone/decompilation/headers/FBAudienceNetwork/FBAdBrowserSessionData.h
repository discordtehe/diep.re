// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADBROWSERSESSIONDATA_H
#define FBADBROWSERSESSIONDATA_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface FBAdBrowserSessionData : NSObject

@property (copy, nonatomic) NSURL *url; // ivar: _url
@property (nonatomic) NSUInteger handlerTimeMs; // ivar: _handlerTimeMs
@property (nonatomic) NSUInteger loadStartMs; // ivar: _loadStartMs
@property (nonatomic) NSUInteger responseEndMs; // ivar: _responseEndMs
@property (nonatomic) NSUInteger domContentLoadedMs; // ivar: _domContentLoadedMs
@property (nonatomic) NSUInteger scrollReadyMs; // ivar: _scrollReadyMs
@property (nonatomic) NSUInteger loadFinishMs; // ivar: _loadFinishMs
@property (nonatomic) NSUInteger sessionFinishMs; // ivar: _sessionFinishMs


-(id)initWithURL:(id)arg0 withHandlerTime:(NSUInteger)arg1 withLoadStart:(NSUInteger)arg2 withResponseEnd:(NSUInteger)arg3 withDOMContentLoaded:(NSUInteger)arg4 withScrollReady:(NSUInteger)arg5 withLoadFinish:(NSUInteger)arg6 withSessionFinish:(NSUInteger)arg7 ;
-(id)dataMap;
+(void)initialize;
+(NSUInteger)currentTimeMs;


@end


#endif