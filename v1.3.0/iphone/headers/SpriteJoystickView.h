// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef SPRITEJOYSTICKVIEW_H
#define SPRITEJOYSTICKVIEW_H


#import <CoreFoundation/CoreFoundation.h>

@class SimpleJoystickView;
@class CCSprite;
@class CCRenderTexture;
@class CCTexture2D;

@interface SpriteJoystickView : SimpleJoystickView {
    CCSprite *mBackground;
    CCSprite *mStick;
    CCSprite *mCross;
    CCRenderTexture *mRenderTexture;
    CGPoint mLerpedStickPosition;
    CCTexture2D *mOriginalRenderTextureTexture;
    NSMutableDictionary *mBufferedTextures;
    CCSprite *mBufferedSprite;
    BOOL mShowCross;
    BOOL mShowDeadZones;
    float mDeadZoneSize;
}




-(void)createTexture;
-(void)listenBackToForeground;
-(id)initWithEaseFactor:(float)arg0 withCross:(BOOL)arg1 ;
-(void)populateTexturesCache;
-(void)didReceiveMemoryWarning:(id)arg0 ;
-(void)dealloc;
-(void)updateRenderTexture;
-(void)renderJoystickToTexture:(id)arg0 lenght:(int)arg1 ;
-(void)onSetEnabled:(BOOL)arg0 ;
-(void)customDraw;
-(float)getBackgroundRadius;
-(float)getStickRadius;
-(float)setDeadZoneSize:(float)arg0 ;


@end


#endif