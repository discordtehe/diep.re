// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADVIDEOPLAYERVIEW_H
#define GADVIDEOPLAYERVIEW_H


#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <Foundation/Foundation.h>

@class GADVideoPlayer;
@class GADObserverCollection;
@protocol GADVideoPlayerViewLoading;

@interface GADVideoPlayerView : UIView <GADVideoPlayerViewLoading>

 {
    GADVideoPlayer *_player;
    AVPlayerLayer *_playerLayer;
    GADObserverCollection *_observers;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)setUpWithPlayer:(id)arg0 queue:(id)arg1 completionBlock:(id)arg2 ;
-(BOOL)resetPlayerLayerWithError:(*id)arg0 ;
-(void)setFrame:(struct CGRect )arg0 ;


@end


#endif