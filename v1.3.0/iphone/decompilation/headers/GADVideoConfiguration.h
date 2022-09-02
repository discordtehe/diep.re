// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADVIDEOCONFIGURATION_H
#define GADVIDEOCONFIGURATION_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>


@interface GADVideoConfiguration : NSObject {
    NSObject<OS_dispatch_queue> *_lockQueue;
    CGFloat _minBufferTimeInterval;
    CGFloat _maxBufferTimeInterval;
    CGFloat _bufferForPlaybackTimeInterval;
    CGFloat _bufferForPlaybackAfterRebufferTimeInterval;
}


@property (readonly, nonatomic) BOOL enableAVPlayerPlaybackBuffering; // ivar: _enableAVPlayerPlaybackBuffering
@property (readonly, nonatomic) BOOL enableAdvanceBufferingControl; // ivar: _enableAdvanceBufferingControl
@property (readonly, nonatomic) BOOL enableInMemoryVideoBuffer; // ivar: _enableInMemoryVideoBuffer
@property (readonly, nonatomic) NSInteger precacheMaxBufferBytes; // ivar: _precacheMaxBufferBytes
@property (readonly, nonatomic) CGFloat videoAssetLoaderMaxDownloadWaitTimeInterval; // ivar: _videoAssetLoaderMaxDownloadWaitTimeInterval
@property (readonly, nonatomic) NSInteger videoAssetLoaderMaxContentSizeInBytes; // ivar: _videoAssetLoaderMaxContentSizeInBytes
@property (readonly, nonatomic) NSInteger videoAssetMaxLoadableChunkSizeInBytes; // ivar: _videoAssetMaxLoadableChunkSizeInBytes
@property (readonly, nonatomic) NSInteger assetLoadingPlayerItemMaxContentLoadingFailedAttempts; // ivar: _assetLoadingPlayerItemMaxContentLoadingFailedAttempts
@property (readonly, nonatomic) NSInteger assetLoadingPlayerItemMaxDataLoadingFailedAttempts; // ivar: _assetLoadingPlayerItemMaxDataLoadingFailedAttempts
@property (readonly, nonatomic) CGFloat assetLoadingPlayerItemRefreshInterval; // ivar: _assetLoadingPlayerItemRefreshInterval
@property (readonly, nonatomic) NSInteger assetLoadingPlayerItemNoBufferUpdateMaxContentSize; // ivar: _assetLoadingPlayerItemNoBufferUpdateMaxContentSize
@property (readonly, nonatomic) BOOL videoBufferShouldIgnoreCanPlayThrough; // ivar: _videoBufferShouldIgnoreCanPlayThrough
@property (readonly, nonatomic) CGFloat precacheUpdateCheckIntervals; // ivar: _precacheUpdateCheckIntervals
@property (readonly) CGFloat minBufferTimeInterval;
@property (readonly) CGFloat maxBufferTimeInterval;
@property (readonly) CGFloat bufferForPlaybackTimeInterval;
@property (readonly) CGFloat bufferForPlaybackAfterRebufferTimeInterval;


-(id)init;
-(id)initWithDictionary:(id)arg0 ;
-(void)updateDynamicConfigurationWithDictionary:(id)arg0 ;
-(void)loadStaticSettingsWithDictionary:(id)arg0 ;
-(void)loadDynamicSettingsWithDictionary:(id)arg0 ;
-(id)dictionary;


@end


#endif