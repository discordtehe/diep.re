// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCFRAMEDSPRITECACHE_H
#define MCFRAMEDSPRITECACHE_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface MCFramedSpriteCache : NSObject {
    NSMutableDictionary *_processedValues;
    NSMutableDictionary *_cachedFiles;
    NSMutableDictionary *_cachedValues;
}




-(id)init;
-(void)dealloc;
-(id)fileNameInCachedFiles:(id)arg0 ;
-(void)updateCachedFilesForFileName:(id)arg0 withHash:(id)arg1 ;
-(id)fileNameInCachedValues:(id)arg0 ;
-(void)updateCachedValuesForFileName:(id)arg0 withValues:(id)arg1 ;
-(id)processedWithHash:(id)arg0 ;
-(void)addProcessedValues:(id)arg0 withHash:(id)arg1 ;
+(id)sharedFramedSpriteCache;
+(void)clearCache;


@end


#endif