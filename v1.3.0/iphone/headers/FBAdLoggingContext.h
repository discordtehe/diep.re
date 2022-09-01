// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADLOGGINGCONTEXT_H
#define FBADLOGGINGCONTEXT_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface FBAdLoggingContext : NSObject

@property (retain, nonatomic) NSMutableDictionary *cacheDebugMap; // ivar: _cacheDebugMap


-(id)cacheDebugDataForKey:(id)arg0 ;
-(void)mapCacheDebugData:(id)arg0 forKey:(id)arg1 ;
-(void)markCacheHitOrMissEventLoggedForKey:(id)arg0 requestId:(id)arg1 ;
-(void)markInMemoryWriteFailureCacheEventLoggedForKey:(id)arg0 requestId:(id)arg1 ;
-(void)markCacheEventLoggedForKey:(id)arg0 requestId:(id)arg1 cacheEventTypeCode:(NSInteger)arg2 ;
-(void)clearContext;
+(id)sharedContext;


@end


#endif