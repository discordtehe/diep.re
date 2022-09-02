// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCAUDIOPLAYERAPI_H
#define ADCAUDIOPLAYERAPI_H


#import <Foundation/Foundation.h>


@interface ADCAudioPlayerAPI : NSObject



-(void)create:(struct ? )arg0 ;
-(void)destroy:(struct ? )arg0 ;
-(void)play:(struct ? )arg0 ;
-(void)pause:(struct ? )arg0 ;
-(void)stop:(struct ? )arg0 ;
-(void)onAudioPlayerError:(NSUInteger)arg0 session:(id)arg1 ;
-(void)onAudioPlayerReady:(BOOL)arg0 playerID:(NSUInteger)arg1 session:(id)arg2 ;
-(void)audioPlayerBeginInterruption:(id)arg0 ;
-(void)audioPlayerEndInterruption:(id)arg0 withOptions:(NSUInteger)arg1 ;
-(void)handleAudioPlayerEvent:(id)arg0 event:(id)arg1 ;
+(void)registerHandlers;
+(void)load;


@end


#endif