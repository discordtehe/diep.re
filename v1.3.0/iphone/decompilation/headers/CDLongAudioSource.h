// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CDLONGAUDIOSOURCE_H
#define CDLONGAUDIOSOURCE_H


#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>

@protocol AVAudioPlayerDelegate;
@protocol CDAudioInterruptProtocol;
@protocol CDLongAudioSourceDelegate;

@interface CDLongAudioSource : NSObject <AVAudioPlayerDelegate, CDAudioInterruptProtocol>

 {
    NSInteger numberOfLoops;
    float volume;
    BOOL mute;
    BOOL enabled_;
    BOOL systemPaused;
    CGFloat systemPauseLocation;
    int state;
}


@property (readonly) AVAudioPlayer *audioSourcePlayer; // ivar: audioSourcePlayer
@property (readonly) NSString *audioSourceFilePath; // ivar: audioSourceFilePath
@property (nonatomic) NSInteger numberOfLoops;
@property (nonatomic) float volume;
@property NSObject<CDLongAudioSourceDelegate> *delegate; // ivar: delegate
@property (nonatomic) BOOL backgroundMusic; // ivar: backgroundMusic
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(void)dealloc;
-(void)load:(id)arg0 ;
-(void)play;
-(void)stop;
-(void)pause;
-(void)rewind;
-(void)resume;
-(BOOL)isPlaying;
-(BOOL)mute;
-(void)setMute:(BOOL)arg0 ;
-(BOOL)enabled;
-(void)setEnabled:(BOOL)arg0 ;
-(void)audioPlayerDidFinishPlaying:(id)arg0 successfully:(BOOL)arg1 ;
-(void)audioPlayerBeginInterruption:(id)arg0 ;
-(void)audioPlayerEndInterruption:(id)arg0 ;


@end


#endif