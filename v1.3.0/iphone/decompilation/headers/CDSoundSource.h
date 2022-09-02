// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CDSOUNDSOURCE_H
#define CDSOUNDSOURCE_H


#import <Foundation/Foundation.h>

@class CDSoundEngine;
@protocol CDAudioTransportProtocol;
@protocol CDAudioInterruptProtocol;

@interface CDSoundSource : NSObject <CDAudioTransportProtocol, CDAudioInterruptProtocol>

 {
    unsigned int _sourceId;
    unsigned int _sourceIndex;
    CDSoundEngine *_engine;
    int _soundId;
    float _preMuteGain;
    BOOL enabled_;
    BOOL mute_;
}


@property (nonatomic) float pitch;
@property (nonatomic) float gain;
@property (nonatomic) float pan;
@property (nonatomic) BOOL looping;
@property (readonly) BOOL isPlaying;
@property (nonatomic) int soundId;
@property (readonly) float durationInSeconds;
@property (readonly) int lastError; // ivar: lastError
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init:(unsigned int)arg0 sourceIndex:(int)arg1 soundEngine:(id)arg2 ;
-(void)dealloc;
-(BOOL)stop;
-(BOOL)play;
-(BOOL)pause;
-(BOOL)rewind;
-(BOOL)mute;
-(void)setMute:(BOOL)arg0 ;
-(BOOL)enabled;
-(void)setEnabled:(BOOL)arg0 ;


@end


#endif