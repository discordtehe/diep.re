// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef UADSAPIVIDEOPLAYER_H
#define UADSAPIVIDEOPLAYER_H


#import <Foundation/Foundation.h>


@interface UADSApiVideoPlayer : NSObject



+(void)WebViewExposed_setProgressEventInterval:(id)arg0 callback:(id)arg1 ;
+(void)WebViewExposed_getProgressEventInterval:(id)arg0 ;
+(void)WebViewExposed_prepare:(id)arg0 initialVolume:(id)arg1 timeout:(id)arg2 callback:(id)arg3 ;
+(void)WebViewExposed_play:(id)arg0 ;
+(void)WebViewExposed_pause:(id)arg0 ;
+(void)WebViewExposed_stop:(id)arg0 ;
+(void)WebViewExposed_seekTo:(id)arg0 callback:(id)arg1 ;
+(void)WebViewExposed_setVolume:(id)arg0 callback:(id)arg1 ;
+(void)WebViewExposed_getVolume:(id)arg0 ;
+(void)WebViewExposed_getCurrentPosition:(id)arg0 ;
+(void)WebViewExposed_setAutomaticallyWaitsToMinimizeStalling:(id)arg0 callback:(id)arg1 ;
+(id)getVideoPlayer;


@end


#endif