// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CLSURLSESSIONCONFIGURATION_H
#define CLSURLSESSIONCONFIGURATION_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol NSCopying;

@interface CLSURLSessionConfiguration : NSObject <NSCopying>



@property (copy, nonatomic) NSDictionary *HTTPAdditionalHeaders; // ivar: _additionalHeaders
@property (retain, nonatomic) NSURLCache *URLCache; // ivar: _URLCache
@property (nonatomic) NSUInteger HTTPCookieAcceptPolicy; // ivar: _cookiePolicy
@property (nonatomic) BOOL sessionSendsLaunchEvents;
@property (nonatomic) CGFloat timeoutIntervalForRequest; // ivar: _timeoutIntervalForRequest
@property (nonatomic) CGFloat timeoutIntervalForResource; // ivar: _timeoutIntervalForResource
@property (nonatomic) BOOL allowsCellularAccess; // ivar: _allowsCellularAccess


-(id)copyWithZone:(struct _NSZone *)arg0 ;
+(id)defaultSessionConfiguration;
+(id)ephemeralSessionConfiguration;
+(id)backgroundSessionConfiguration:(id)arg0 ;
+(id)backgroundSessionConfigurationWithIdentifier:(id)arg0 ;


@end


#endif