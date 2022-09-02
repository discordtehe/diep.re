// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FNFASSETRESOURCELOADER_H
#define FNFASSETRESOURCELOADER_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol FNFAssetResourceLoaderDelegate;

@interface FNFAssetResourceLoader : NSObject

@property (readonly, weak, nonatomic) NSObject<FNFAssetResourceLoaderDelegate> *delegate; // ivar: _delegate
@property (readonly, nonatomic) NSObject<OS_dispatch_queue> *delegateQueue; // ivar: _delegateQueue
@property (readonly, copy, nonatomic) NSString *videoID; // ivar: _videoID
@property (readonly, copy, nonatomic) NSString *trackerID; // ivar: _trackerID
@property (readonly, copy, nonatomic) NSSet *analyticsTags; // ivar: _analyticsTags




@end


#endif