// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CDAUDIOMANAGER_H
#define CDAUDIOMANAGER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class CDLongAudioSource;
@class CDSoundEngine;
@protocol CDLongAudioSourceDelegate;
@protocol CDAudioInterruptProtocol;

@interface CDAudioManager : NSObject <CDLongAudioSourceDelegate, CDAudioInterruptProtocol>

 {
    CDLongAudioSource *backgroundMusic;
    NSMutableArray *audioSourceChannels;
    NSString *_audioSessionCategory;
    BOOL _audioWasPlayingAtStartup;
    int _mode;
    SEL backgroundMusicCompletionSelector;
    id *backgroundMusicCompletionListener;
    BOOL _mute;
    BOOL _resigned;
    BOOL _interrupted;
    BOOL _audioSessionActive;
    BOOL enabled_;
    BOOL _isObservingAppEvents;
    int _resignBehavior;
}


@property (readonly) CDSoundEngine *soundEngine; // ivar: soundEngine
@property (readonly) CDLongAudioSource *backgroundMusic;
@property (readonly) BOOL willPlayBackgroundMusic; // ivar: willPlayBackgroundMusic
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(BOOL)audioSessionSetActive:(BOOL)arg0 ;
-(BOOL)audioSessionSetCategory:(id)arg0 ;
-(BOOL)isOtherAudioPlaying;
-(void)setMode:(int)arg0 ;
-(void)badAlContextHandler;
-(id)init:(int)arg0 ;
-(void)dealloc;
-(id)audioSourceForChannel:(int)arg0 ;
-(id)audioSourceLoad:(id)arg0 channel:(int)arg1 ;
-(BOOL)isBackgroundMusicPlaying;
-(BOOL)isDeviceMuted;
-(BOOL)mute;
-(void)setMute:(BOOL)arg0 ;
-(BOOL)enabled;
-(void)setEnabled:(BOOL)arg0 ;
-(void)preloadBackgroundMusic:(id)arg0 ;
-(void)playBackgroundMusic:(id)arg0 loop:(BOOL)arg1 ;
-(void)stopBackgroundMusic;
-(void)pauseBackgroundMusic;
-(void)resumeBackgroundMusic;
-(void)rewindBackgroundMusic;
-(void)setResignBehavior:(int)arg0 autoHandle:(BOOL)arg1 ;
-(void)applicationWillResignActive;
-(void)applicationWillResignActive:(id)arg0 ;
-(void)applicationDidBecomeActive;
-(void)applicationDidBecomeActive:(id)arg0 ;
-(void)applicationWillTerminate:(id)arg0 ;
-(void)cdAudioSourceDidFinishPlaying:(id)arg0 ;
-(void)beginInterruption;
-(void)endInterruption;
-(void)endInterruptionWithFlags:(NSUInteger)arg0 ;
-(void)endInterruptionWithOptions:(NSUInteger)arg0 ;
-(void)audioSessionInterrupted;
-(void)audioSessionResumed;
-(void)interruption:(id)arg0 ;
+(id)sharedManager;
+(int)sharedManagerState;
+(void)initAsynchronously:(int)arg0 ;
+(id)alloc;
+(void)configure:(int)arg0 ;
+(void)end;


@end


#endif