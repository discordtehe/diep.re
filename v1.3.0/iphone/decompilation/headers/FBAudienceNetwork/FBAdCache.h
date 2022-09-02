// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADCACHE_H
#define FBADCACHE_H

@protocol OS_dispatch_queue;

#import <CoreFoundation/CoreFoundation.h>
#import <Foundation/Foundation.h>

@class FBAdTimer;
@class FBAdInMemoryCache;

@interface FBAdCache : NSCache

@property (readonly, nonatomic) BOOL wipeDiskCacheIfNeeded;
@property (retain, nonatomic) NSObject<OS_dispatch_queue> *expirationQueue; // ivar: _expirationQueue
@property (retain, nonatomic) FBAdTimer *removalTimer; // ivar: _removalTimer
@property (retain, nonatomic) FBAdInMemoryCache *cacheV2; // ivar: _cacheV2
@property (retain, nonatomic) NSMapTable *pendingVideoRequests; // ivar: _pendingVideoRequests
@property (retain, nonatomic) NSMapTable *objectsToBeExpired; // ivar: _objectsToBeExpired
@property (readonly, nonatomic) NSUInteger diskCacheSize;


-(id)init;
-(id)initWithExpirationInterval:(CGFloat)arg0 ;
-(id)objectForKey:(id)arg0 ;
-(id)objectForKey:(id)arg0 filterPlaceholder:(BOOL)arg1 ;
-(void)removeObjectForKey:(id)arg0 ;
-(void)setObject:(id)arg0 forKey:(id)arg1 cost:(NSUInteger)arg2 ;
-(void)setObject:(id)arg0 forKey:(id)arg1 withExpiration:(id)arg2 ;
-(void)setObject:(id)arg0 forKey:(id)arg1 cost:(NSUInteger)arg2 withExpiration:(id)arg3 ;
-(void)objectForKey:(id)arg0 withBlock:(id)arg1 ;
-(BOOL)shouldUseVideoWrapperCacheFix;
// -(void)objectForKey:(id)arg0 withURL:(id)arg1 withFetchType:(NSInteger)arg2 withBlock:(id)arg3 withCallback:(unk)arg4  ;
-(void)objectForKey:(id)arg0 withURL:(id)arg1 withFetchType:(NSInteger)arg2 withBlock:(id)arg3 ;
-(id)imageForURL:(id)arg0 ;
-(void)imageForURL:(id)arg0 withBlock:(id)arg1 ;
-(void)setImage:(id)arg0 forURL:(id)arg1 ;
-(void)markupForURL:(id)arg0 withBlock:(id)arg1 ;
-(void)setMarkup:(id)arg0 forURL:(id)arg1 ;
-(void)videoURLWrapperForURL:(id)arg0 withBlock:(id)arg1 ;
-(void)setVideoURLWrapper:(id)arg0 forURL:(id)arg1 ;
-(id)nativeAdsForScrollView:(id)arg0 forManager:(id)arg1 ;
-(void)setNativeAds:(id)arg0 forScrollView:(id)arg1 forManager:(id)arg2 ;
-(BOOL)shouldUseNonNSCacheBasedCache;
-(BOOL)checkObjectExistsForKey:(id)arg0 adCreative:(id)arg1 ;
-(void)logVideoWrapperCachedWithVideoMissingForKey:(id)arg0 ;
-(void)logCacheHitOrMissForKey:(id)arg0 adCreative:(id)arg1 hit:(BOOL)arg2 ;
-(void)wipeCache;
-(void)wipeDiskCache;
-(void)wipeInMemoryCache;
-(void)removeAllObjects;
-(BOOL)fileWithRemoteUrlExistsOnDisk:(id)arg0 fetchType:(NSInteger)arg1 ;
-(void)dealloc;
+(void)initialize;
+(id)sharedCache;


@end


#endif