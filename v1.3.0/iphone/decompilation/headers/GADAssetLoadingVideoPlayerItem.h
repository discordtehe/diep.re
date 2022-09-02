// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADASSETLOADINGVIDEOPLAYERITEM_H
#define GADASSETLOADINGVIDEOPLAYERITEM_H

@class AVAssetResourceLoadingRequest;
@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>
#import <AVFoundation/AVFoundation.h>

@class GADVideoAssetLoader;
@class GADVideoConfiguration;
@class GADResourceBuffer;
@class GADVideoPlayer;
@protocol GADAVPlayerItemProvider;
@protocol AVAssetResourceLoaderDelegate;

@interface GADAssetLoadingVideoPlayerItem : NSObject <GADAVPlayerItemProvider, AVAssetResourceLoaderDelegate>

 {
    NSURL *_videoURL;
    GADVideoAssetLoader *_assetLoader;
    GADVideoConfiguration *_videoConfiguration;
    AVPlayerItem *_playerItem;
    NSTimer *_playerItemCheckSourceTimer;
    BOOL _loadingEnabled;
    AVAssetResourceLoadingRequest *_loadingRequest;
    GADResourceBuffer *_resourceBuffer;
    NSInteger _resourceBufferStartingByteOffset;
    GADVideoPlayer *_player;
    id *_playbackProgressObserver;
    float _videoBitRateInBitsPerSecond;
    CGFloat _playerItemCachingStartTimeInterval;
    CGFloat _playerItemCurrentTimeInterval;
    NSInteger _loadedContentSizeWithNoBufferUpdate;
    NSInteger _numberOfFailedResourceBuffer;
    NSObject<OS_dispatch_queue> *_lockQueue;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithVideoURL:(id)arg0 assetLoader:(id)arg1 videoConfiguration:(id)arg2 ;
-(void)dealloc;
-(void)setPlayer:(id)arg0 ;
-(id)videoURL;
-(id)playerItem;
-(void)observeValueForKeyPath:(id)arg0 ofObject:(id)arg1 change:(id)arg2 context:(*void)arg3 ;
-(void)startPlayerItemCheckSourceTimer;
-(void)stopPlayerItemCheckSourceTimer;
-(void)loadPlayerItemData;
-(void)handlePlayerItemUpdates;
-(void)processLoadingRequest;
-(BOOL)prepareForLoadingByteOffset:(NSInteger)arg0 ;
-(BOOL)loadContentRequest:(id)arg0 withError:(*id)arg1 ;
-(BOOL)loadDataRequest:(id)arg0 withError:(*id)arg1 ;
-(BOOL)resourceLoader:(id)arg0 shouldWaitForLoadingOfRequestedResource:(id)arg1 ;
-(void)resourceLoader:(id)arg0 didCancelLoadingRequest:(id)arg1 ;


@end


#endif