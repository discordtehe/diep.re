// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCVIDEOVIEWMPAPI_H
#define ADCVIDEOVIEWMPAPI_H


#import <Foundation/Foundation.h>


@interface ADCVideoViewMPAPI : NSObject



-(void)create:(struct ? )arg0 ;
-(void)destroy:(struct ? )arg0 ;
-(void)play:(struct ? )arg0 ;
-(void)pause:(struct ? )arg0 ;
-(void)seekToTime:(struct ? )arg0 ;
-(void)setBounds:(struct ? )arg0 ;
-(void)setVisible:(struct ? )arg0 ;
-(void)setVolume:(struct ? )arg0 ;
-(void)onVideoViewReady:(id)arg0 ;
-(void)onVideoViewDidMakeProgress:(id)arg0 finished:(BOOL)arg1 ;
-(void)onVideoViewDidFail:(id)arg0 ;
+(void)registerHandlers;
+(void)load;


@end


#endif