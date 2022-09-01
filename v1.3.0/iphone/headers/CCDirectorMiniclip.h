// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCDIRECTORMINICLIP_H
#define CCDIRECTORMINICLIP_H



@class CCDirectorIOSMC;

@interface CCDirectorMiniclip : CCDirectorIOSMC



-(void)mainLoop:(id)arg0 ;
-(void)setAnimationInterval:(CGFloat)arg0 ;
-(void)startAnimation;
-(void)stopAnimation;
-(CGFloat)timestamp;
-(void)calculateDeltaTime;


@end


#endif