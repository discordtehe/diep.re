// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADAUDIOMUTEBUTTON_H
#define FBADAUDIOMUTEBUTTON_H


#import <UIKit/UIKit.h>


@interface FBAdAudioMuteButton : UIButton



-(void)drawRect:(struct CGRect )arg0 ;
-(void)drawUnmute:(struct CGRect )arg0 ;
-(void)drawMute:(struct CGRect )arg0 ;
+(void)initialize;
+(id)audioMuteButton;


@end


#endif