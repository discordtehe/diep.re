// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADCOOKIEDATA_H
#define FBADCOOKIEDATA_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface FBAdCookieData : NSObject

@property (readonly, copy, nonatomic) NSURL *url; // ivar: _url
@property (readonly, copy, nonatomic) NSString *key; // ivar: _key
@property (readonly, copy, nonatomic) NSString *value; // ivar: _value
@property (readonly, copy, nonatomic) NSDate *expiration; // ivar: _expiration
@property (readonly, copy, nonatomic) NSHTTPCookie *cookie; // ivar: _cookie
@property (readonly, nonatomic, getter=isLocalOnly) BOOL localOnly; // ivar: _localOnly


-(id)init;
-(id)initWithMetadata:(id)arg0 ;
+(id)cookieStringForCookies:(id)arg0 ;
+(id)parseCookieData:(id)arg0 ;


@end


#endif