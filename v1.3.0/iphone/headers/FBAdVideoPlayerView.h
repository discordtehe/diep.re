// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADVIDEOPLAYERVIEW_H
#define FBADVIDEOPLAYERVIEW_H


#import <UIKit/UIKit.h>

@class FBAdKVOController;
@protocol FNFAVPlayerLayer;
@protocol FNFAVPlayer;

@interface FBAdVideoPlayerView : UIView

@property (weak, nonatomic) NSObject<FNFAVPlayerLayer> *playerLayer; // ivar: _playerLayer
@property (nonatomic) BOOL initialized; // ivar: _initialized
@property (retain, nonatomic) FBAdKVOController *readyForDisplayKVOController; // ivar: _readyForDisplayKVOController
@property (copy, nonatomic) id *videoReadyToDisplay; // ivar: _videoReadyToDisplay
@property (retain, nonatomic) NSObject<FNFAVPlayer> *player; // ivar: _player


-(id)init;
-(id)initWithVideoReadyToDisplay:(id)arg0 ;
-(id)initWithFrame:(struct CGRect )arg0 ;
-(id)initWithFrame:(struct CGRect )arg0 videoReadyToDisplay:(id)arg1 ;
-(void)initVideoLayer;
-(void)dealloc;
-(void)updateView:(BOOL)arg0 ;
-(void)layoutSubviews;
+(void)initialize;


@end


#endif