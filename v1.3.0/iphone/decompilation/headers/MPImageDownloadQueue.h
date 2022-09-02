// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPIMAGEDOWNLOADQUEUE_H
#define MPIMAGEDOWNLOADQUEUE_H


#import <Foundation/Foundation.h>


@interface MPImageDownloadQueue : NSObject

@property (retain) NSOperationQueue *imageDownloadQueue; // ivar: _imageDownloadQueue
@property BOOL isCanceled; // ivar: _isCanceled


-(id)init;
-(void)dealloc;
-(void)addDownloadImageURLs:(id)arg0 completionBlock:(id)arg1 ;
// -(void)addDownloadImageURLs:(id)arg0 completionBlock:(id)arg1 useCachedImage:(unk)arg2  ;
-(void)cancelAllDownloads;


@end


#endif