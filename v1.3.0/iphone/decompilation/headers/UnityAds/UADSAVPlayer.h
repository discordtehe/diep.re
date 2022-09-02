// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef UADSAVPLAYER_H
#define UADSAVPLAYER_H


#import <AVFoundation/AVFoundation.h>
#import <Foundation/Foundation.h>


@interface UADSAVPlayer : AVPlayer

@property (nonatomic) id *progressTimer; // ivar: _progressTimer
@property (nonatomic) id *prepareTimeoutTimer; // ivar: _prepareTimeoutTimer
@property (nonatomic) BOOL isObservingCompletion; // ivar: _isObservingCompletion
@property (retain, nonatomic) NSString *url; // ivar: _url
@property (nonatomic) int progressInterval; // ivar: _progressInterval
@property (nonatomic) BOOL isPlaying; // ivar: _isPlaying


-(void)prepare:(id)arg0 initialVolume:(float)arg1 timeout:(NSInteger)arg2 ;
-(void)startObserving;
-(void)stopObserving;
-(void)setProgressEventInterval:(int)arg0 ;
-(void)startPrepareTimeoutTimer:(NSInteger)arg0 ;
-(void)stopPrepareTimeoutTimer;
-(void)onPrepareTimeoutListener:(id)arg0 ;
-(void)onCompletionListener:(id)arg0 ;
-(void)startVideoProgressTimer;
-(void)stopVideoProgressTimer;
-(void)videoProgressTimer:(id)arg0 ;
-(void)play;
-(void)pause;
-(void)stop;
-(void)seekTo:(NSInteger)arg0 ;
-(NSInteger)getMsFromCMTime:(struct ? )arg0 ;
-(NSInteger)getCurrentPosition;
-(void)observeValueForKeyPath:(id)arg0 ofObject:(id)arg1 change:(id)arg2 context:(*void)arg3 ;


@end


#endif