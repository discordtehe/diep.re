// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADOMIDVIDEOEVENTS_H
#define GADOMIDVIDEOEVENTS_H


#import <Foundation/Foundation.h>

@class GADOMIDAdSession;

@interface GADOMIDVideoEvents : NSObject {
    GADOMIDAdSession *_adSession;
    CGFloat _playerVolume;
    BOOL _observerIsRegistered;
}




-(id)initWithAdSession:(id)arg0 error:(*id)arg1 ;
-(void)loadedWithVastProperties:(id)arg0 ;
-(void)startWithDuration:(CGFloat)arg0 videoPlayerVolume:(CGFloat)arg1 ;
-(void)firstQuartile;
-(void)midpoint;
-(void)thirdQuartile;
-(void)complete;
-(void)pause;
-(void)resume;
-(void)skipped;
-(void)bufferStart;
-(void)bufferFinish;
-(void)volumeChangeTo:(CGFloat)arg0 ;
-(void)playerStateChangeTo:(NSUInteger)arg0 ;
-(void)adUserInteractionWithType:(NSUInteger)arg0 ;
-(void)publishEventWithName:(id)arg0 parameters:(id)arg1 ;
-(void)publishEventWithName:(id)arg0 parameters:(id)arg1 requireStart:(BOOL)arg2 ;
-(id)stringFromPlayerState:(NSUInteger)arg0 ;
-(id)stringFromInteractionType:(NSUInteger)arg0 ;
-(CGFloat)deviceVolume;
-(void)startListeningForDeviceVolumeChanges;
-(void)stopListeningForDeviceVolumeChanges;
-(void)observeValueForKeyPath:(id)arg0 ofObject:(id)arg1 change:(id)arg2 context:(*void)arg3 ;
-(void)dealloc;


@end


#endif