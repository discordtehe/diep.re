// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef AUDIOMANAGER_H
#define AUDIOMANAGER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface AudioManager : NSObject {
    NSMutableDictionary *mSoundEntryDictionary;
    NSMutableDictionary *mSoundEntryForInstanceDictionary;
    NSMutableArray *mSoundInstanceToRemoveArray;
    NSArray *mSoundExtensionFallbackArray;
}


@property float backgroundMusicVolume;
@property float effectsVolume;
@property (readonly) BOOL willPlayBackgroundMusic;
@property (readonly) BOOL isPlayingBackgroundMusic;
@property BOOL mute;


-(id)init;
-(void)dealloc;
-(id)getFullFilePathForSoundFile:(id)arg0 ;
-(void)preloadBackgroundMusic:(id)arg0 ;
-(void)playBackgroundMusic:(id)arg0 ;
-(void)playBackgroundMusic:(id)arg0 loop:(BOOL)arg1 ;
-(void)stopBackgroundMusic;
-(void)pauseBackgroundMusic;
-(void)resumeBackgroundMusic;
-(void)rewindBackgroundMusic;
-(id)getSoundEffectEntry:(id)arg0 ;
-(NSUInteger)getEffectNumInstances:(id)arg0 ;
-(unsigned int)playEffect:(id)arg0 volume:(float)arg1 loop:(BOOL)arg2 maximumInstances:(unsigned int)arg3 timePadding:(CGFloat)arg4 ;
-(unsigned int)playEffect:(id)arg0 volume:(float)arg1 loop:(BOOL)arg2 ignoreIfAlreadyPlaying:(BOOL)arg3 timePadding:(CGFloat)arg4 ;
-(unsigned int)playEffect:(id)arg0 volume:(float)arg1 loop:(BOOL)arg2 ignoreIfAlreadyPlaying:(BOOL)arg3 ;
-(unsigned int)playEffect:(id)arg0 volume:(float)arg1 loop:(BOOL)arg2 ;
-(unsigned int)playEffect:(id)arg0 volume:(float)arg1 ;
-(unsigned int)playEffect:(id)arg0 ;
-(void)stopEffect:(unsigned int)arg0 ;
-(void)preloadEffect:(id)arg0 ;
-(void)cacheEffect:(id)arg0 ;
-(void)uncacheEffect:(id)arg0 ;
-(float)getEffectLength:(id)arg0 ;
-(void)update:(CGFloat)arg0 ;
+(id)sharedAudioManager;
+(BOOL)isAudioManagerInitialized;
+(void)releaseSharedAudioManager;


@end


#endif