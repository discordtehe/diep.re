// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CDSOUNDENGINE_H
#define CDSOUNDENGINE_H


#import <Foundation/Foundation.h>

@protocol CDAudioInterruptProtocol;

@interface CDSoundEngine : NSObject <CDAudioInterruptProtocol>

 {
    *_bufferInfo _buffers;
    *_sourceInfo _sources;
    *_sourceGroup _sourceGroups;
    *ALCcontext_struct context;
    NSUInteger _sourceGroupTotal;
    unsigned int _audioSessionCategory;
    BOOL _handleAudioSession;
    float _preMuteGain;
    NSObject *_mutexBufferLoad;
    BOOL mute_;
    BOOL enabled_;
    int bufferTotal;
}


@property (nonatomic) float masterGain;
@property (readonly) int lastErrorCode; // ivar: lastErrorCode_
@property (readonly) BOOL functioning; // ivar: functioning_
@property float asynchLoadProgress; // ivar: asynchLoadProgress_
@property (readonly) BOOL getGainWorks; // ivar: getGainWorks_
@property (readonly) int sourceTotal; // ivar: sourceTotal_
@property (readonly) NSUInteger sourceGroupTotal;
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)_testGetGain;
-(void)_generateSources;
-(void)_generateBuffers:(int)arg0 endIndex:(int)arg1 ;
-(BOOL)_initOpenAL;
-(void)dealloc;
-(void)_freeSourceGroups;
-(BOOL)_redefineSourceGroups:(*int)arg0 total:(NSUInteger)arg1 ;
-(BOOL)_setUpSourceGroups:(*int)arg0 total:(NSUInteger)arg1 ;
-(void)defineSourceGroups:(*int)arg0 total:(NSUInteger)arg1 ;
-(void)defineSourceGroups:(id)arg0 ;
-(id)init;
-(BOOL)unloadBuffer:(int)arg0 ;
-(void)loadBuffersAsynchronously:(id)arg0 ;
-(BOOL)_resizeBuffers:(int)arg0 ;
-(BOOL)loadBufferFromData:(int)arg0 soundData:(*void)arg1 format:(int)arg2 size:(int)arg3 freq:(int)arg4 ;
-(BOOL)loadBuffer:(int)arg0 filePath:(id)arg1 ;
-(BOOL)validateBufferId:(int)arg0 ;
-(float)bufferDurationInSeconds:(int)arg0 ;
-(int)bufferSizeInBytes:(int)arg0 ;
-(int)bufferFrequencyInHertz:(int)arg0 ;
-(BOOL)mute;
-(void)setMute:(BOOL)arg0 ;
-(BOOL)enabled;
-(void)setEnabled:(BOOL)arg0 ;
-(void)_lockSource:(int)arg0 lock:(BOOL)arg1 ;
-(int)_getSourceIndexForSourceGroup:(int)arg0 ;
-(unsigned int)playSound:(int)arg0 sourceGroupId:(int)arg1 pitch:(float)arg2 pan:(float)arg3 gain:(float)arg4 loop:(BOOL)arg5 ;
-(BOOL)_soundSourceAttachToBuffer:(id)arg0 soundId:(int)arg1 ;
-(id)soundSourceForSound:(int)arg0 sourceGroupId:(int)arg1 ;
-(void)_soundSourcePreRelease:(id)arg0 ;
-(void)stopSourceGroup:(int)arg0 ;
-(void)stopSound:(unsigned int)arg0 ;
-(void)stopAllSounds;
-(void)setSourceGroupNonInterruptible:(int)arg0 isNonInterruptible:(BOOL)arg1 ;
-(void)setSourceGroupEnabled:(int)arg0 enabled:(BOOL)arg1 ;
-(BOOL)sourceGroupEnabled:(int)arg0 ;
-(struct ALCcontext_struct *)openALContext;
-(void)_dumpSourceGroupsInfo;
+(void)setMixerSampleRate:(float)arg0 ;


@end


#endif