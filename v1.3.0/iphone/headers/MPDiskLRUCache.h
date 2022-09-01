// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPDISKLRUCACHE_H
#define MPDISKLRUCACHE_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>


@interface MPDiskLRUCache : NSObject

@property (retain, nonatomic) NSObject<OS_dispatch_queue> *diskIOQueue; // ivar: _diskIOQueue
@property (copy, nonatomic) NSString *diskCachePath; // ivar: _diskCachePath
@property NSUInteger numBytesStoredForSizeCheck; // ivar: _numBytesStoredForSizeCheck


-(id)init;
-(void)dealloc;
-(void)removeAllCachedFiles;
-(BOOL)cachedDataExistsForKey:(id)arg0 ;
-(id)retrieveDataForKey:(id)arg0 ;
-(void)storeData:(id)arg0 forKey:(id)arg1 ;
-(void)ensureCacheSizeLimit;
-(id)expiredCachedFilesInArray:(id)arg0 ;
-(id)cacheFilesSortedByModDate;
-(NSUInteger)sizeOfCacheFilesInArray:(id)arg0 ;
-(id)cacheFilePathForKey:(id)arg0 ;
+(id)sharedDiskCache;


@end


#endif