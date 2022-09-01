// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADNETWORKVIDEOPLAYERITEM_H
#define GADNETWORKVIDEOPLAYERITEM_H


#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol GADAVPlayerItemProvider;

@interface GADNetworkVideoPlayerItem : NSObject <GADAVPlayerItemProvider>

 {
    AVPlayerItem *_playerItem;
    NSURL *_videoURL;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithVideoURL:(id)arg0 ;
-(id)playerItem;
-(id)videoURL;


@end


#endif