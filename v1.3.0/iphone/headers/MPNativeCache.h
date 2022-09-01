// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPNATIVECACHE_H
#define MPNATIVECACHE_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class MPDiskLRUCache;
@protocol NSCacheDelegate;

@interface MPNativeCache : NSObject <NSCacheDelegate>



@property (retain, nonatomic) NSCache *memoryCache; // ivar: _memoryCache
@property (retain, nonatomic) MPDiskLRUCache *diskCache; // ivar: _diskCache
@property (nonatomic) int cacheMethod; // ivar: _cacheMethod
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(void)dealloc;
-(void)setInMemoryCacheEnabled:(BOOL)arg0 ;
-(BOOL)cachedDataExistsForKey:(id)arg0 ;
-(id)retrieveDataForKey:(id)arg0 ;
-(void)storeData:(id)arg0 forKey:(id)arg1 ;
-(void)removeAllDataFromCache;
-(BOOL)cachedDataExistsForKey:(id)arg0 withCacheMethod:(int)arg1 ;
-(id)retrieveDataForKey:(id)arg0 withCacheMethod:(int)arg1 ;
-(void)storeData:(id)arg0 forKey:(id)arg1 withCacheMethod:(int)arg2 ;
-(void)removeAllDataFromMemory;
-(void)removeAllDataFromDisk;
-(void)didReceiveMemoryWarning:(id)arg0 ;
-(void)cache:(id)arg0 willEvictObject:(id)arg1 ;
+(id)sharedCache;


@end


#endif