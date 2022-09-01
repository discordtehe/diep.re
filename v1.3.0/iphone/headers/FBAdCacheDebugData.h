// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADCACHEDEBUGDATA_H
#define FBADCACHEDEBUGDATA_H


#import <Foundation/Foundation.h>


@interface FBAdCacheDebugData : NSObject

@property (readonly, copy, nonatomic) NSString *requestId; // ivar: _requestId
@property (readonly, copy, nonatomic) NSString *adFormat; // ivar: _adFormat
@property (readonly, nonatomic) BOOL hitOrMissLogged; // ivar: _hitOrMissLogged
@property (readonly, nonatomic) BOOL inMemoryCacheWriteFailureLogged; // ivar: _inMemoryCacheWriteFailureLogged


-(id)initWithRequestId:(id)arg0 adFormat:(id)arg1 ;
-(void)markHitOrMissLogged;
-(void)markInMemoryCacheWriteFailureLogged;
-(id)copyWithZone:(struct _NSZone *)arg0 ;


@end


#endif