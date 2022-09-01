// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FNFMP4DATALOADER_H
#define FNFMP4DATALOADER_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class FNFAssetResourceLoader;
@class FNFDataBlockDistributor;
@class FNFAssetResourceLoadingRequest;
@protocol FNFDataLoader;
@protocol FNFDataLoaderDelegate;

@interface FNFMp4DataLoader : NSObject <FNFDataLoader>

 {
    id<FNFDataLoaderDelegate> *_delegate;
    FNFAssetResourceLoader *_resourceLoader;
    FNFDataBlockDistributor *_dataBlockDistributor;
    NSObject<OS_dispatch_queue> *_dispatchQueue;
    FNFAssetResourceLoadingRequest *_currentResourceLoaderRequest;
    NSUInteger _requestOffset;
    NSUInteger _receiveOffset;
    BOOL _fullyLoaded;
    NSUInteger _bitrate;
    NSURL *_url;
    NSUInteger _fileSize;
    BOOL _async;
}




-(id)initWithUrl:(id)arg0 bitrate:(NSUInteger)arg1 dataBlockDistributor:(id)arg2 dispatchQueue:(id)arg3 async:(BOOL)arg4 ;
-(id)initWithUrl:(id)arg0 bitrate:(NSUInteger)arg1 dataBlockDistributor:(id)arg2 resourceLoader:(id)arg3 dispatchQueue:(id)arg4 async:(BOOL)arg5 ;
-(void)setDelegate:(id)arg0 ;
-(id)description;
-(void)fetchFirstRequestForSeconds:(unsigned int)arg0 initializationAtomSize:(NSUInteger)arg1 track:(NSInteger)arg2 ;
-(void)fetchToOffset:(NSUInteger)arg0 forTrack:(NSInteger)arg1 ;
-(void)seekForwardToOffset:(NSUInteger)arg0 forTrack:(NSInteger)arg1 ;
-(void)resetWithNewDataBlockDistributor:(id)arg0 ;
-(void)cancelRequests;
-(BOOL)fetchInProgressForTrack:(NSInteger)arg0 ;
-(NSUInteger)currentReceiveOffsetForTrack:(NSInteger)arg0 ;
-(NSUInteger)currentRequestOffsetForTrack:(NSInteger)arg0 ;
-(BOOL)isFullyDownloaded:(NSInteger)arg0 ;
-(id)resourceLoader;
-(void)_fetchStartingAtOffset:(NSUInteger)arg0 length:(NSUInteger)arg1 forTrack:(NSInteger)arg2 ;
-(void)_dataCallback:(id)arg0 offset:(NSUInteger)arg1 dataRequest:(id)arg2 forTrack:(NSInteger)arg3 ;
-(void)_dataFinished:(id)arg0 dataRequest:(id)arg1 contentInfo:(id)arg2 loadingRequest:(id)arg3 forTrack:(NSInteger)arg4 ;
-(void)_forTestingOverrideResourceLoader:(id)arg0 ;


@end


#endif