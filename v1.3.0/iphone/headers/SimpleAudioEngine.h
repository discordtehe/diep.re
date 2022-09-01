// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef SIMPLEAUDIOENGINE_H
#define SIMPLEAUDIOENGINE_H


#import <Foundation/Foundation.h>

@protocol CDAudioInterruptProtocol;

@interface SimpleAudioEngine : NSObject <CDAudioInterruptProtocol>

 {
    BOOL mute_;
    BOOL enabled_;
}


@property float backgroundMusicVolume;
@property float effectsVolume;
@property (readonly) BOOL willPlayBackgroundMusic;
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(void)dealloc;
-(void)preloadBackgroundMusic:(id)arg0 ;
-(void)playBackgroundMusic:(id)arg0 ;
-(void)playBackgroundMusic:(id)arg0 loop:(BOOL)arg1 ;
-(void)stopBackgroundMusic;
-(void)pauseBackgroundMusic;
-(void)resumeBackgroundMusic;
-(void)rewindBackgroundMusic;
-(BOOL)isBackgroundMusicPlaying;
-(unsigned int)playEffect:(id)arg0 ;
-(unsigned int)playEffect:(id)arg0 pitch:(float)arg1 pan:(float)arg2 gain:(float)arg3 ;
-(unsigned int)playEffect:(id)arg0 pitch:(float)arg1 pan:(float)arg2 gain:(float)arg3 loop:(BOOL)arg4 ;
-(void)stopEffect:(unsigned int)arg0 ;
-(void)preloadEffect:(id)arg0 ;
-(void)unloadEffect:(id)arg0 ;
-(BOOL)mute;
-(void)setMute:(BOOL)arg0 ;
-(BOOL)enabled;
-(void)setEnabled:(BOOL)arg0 ;
-(id)soundSourceForFile:(id)arg0 ;
+(id)sharedEngine;
+(id)alloc;
+(void)end;


@end


#endif