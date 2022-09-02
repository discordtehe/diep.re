// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADRESOURCELOADER_H
#define FBADRESOURCELOADER_H


#import <Foundation/Foundation.h>

@protocol FNFAssetResourceLoaderDelegate;

@interface FBAdResourceLoader : NSObject <FNFAssetResourceLoaderDelegate>



@property (retain, nonatomic) NSMapTable *pendingVideoRequests; // ivar: _pendingVideoRequests
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
// -(void)fetchCacheObjectAtURL:(id)arg0 withCacheFileURL:(id)arg1 withFetchType:(NSInteger)arg2 withRetryBlock:(id)arg3 withImageBlock:(unk)arg4 withDataBlock:(id)arg5 withVideoBlock:(unk)arg6 withMarkupBlock:(id)arg7  ;
-(BOOL)writeData:(id)arg0 toURL:(id)arg1 error:(*id)arg2 ;
-(BOOL)useFileManager;
-(void)logCreativeDownloadFailureForURL:(id)arg0 fetchType:(NSInteger)arg1 reason:(id)arg2 ;
-(void)logDiskWriteEventIfNeededForURL:(id)arg0 fetchType:(NSInteger)arg1 reason:(id)arg2 success:(BOOL)arg3 ;
-(void)logDiskWriteFailureIfNeededForURL:(id)arg0 fetchType:(NSInteger)arg1 reason:(id)arg2 ;
-(void)logDiskWriteSuccessIfNeededForURL:(id)arg0 fetchType:(NSInteger)arg1 ;
// -(void)fetchImageAtURL:(id)arg0 withCacheFileURL:(id)arg1 withRetryBlock:(id)arg2 withImageBlock:(unk)arg3  ;
// -(void)fetchDataAtURL:(id)arg0 withCacheFileURL:(id)arg1 withRetryBlock:(id)arg2 withDataBlock:(unk)arg3  ;
// -(void)fetchVideotAtURL:(id)arg0 withCacheFileURL:(id)arg1 withRetryBlock:(id)arg2 withVideoBlock:(unk)arg3  ;
// -(void)fetchMarkupAtURL:(id)arg0 withCacheFileURL:(id)arg1 withRetryBlock:(id)arg2 withMarkupBlock:(unk)arg3  ;
-(void)addVideoRequest:(id)arg0 forKey:(id)arg1 ;
-(id)videoRequestForKey:(id)arg0 ;
-(void)removeVideoRequestForKey:(id)arg0 ;
-(void)resourceLoader:(id)arg0 cancelLoadingRequest:(id)arg1 ;
-(void)resourceLoader:(id)arg0 loadRequest:(id)arg1 ;
-(BOOL)resourceLoader:(id)arg0 hasPrefetchedDataForUrl:(id)arg1 ;
-(BOOL)resourceLoader:(id)arg0 hasCachedDataForUrl:(id)arg1 offset:(NSInteger)arg2 length:(int)arg3 ;
-(int)activeRequestCountUsingResourceLoader:(id)arg0 ;
+(id)sharedResourceLoader;
+(id)fetchTypeToCreativeMap;


@end


#endif