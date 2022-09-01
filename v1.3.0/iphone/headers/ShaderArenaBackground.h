// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef SHADERARENABACKGROUND_H
#define SHADERARENABACKGROUND_H


#import <Foundation/Foundation.h>

@class CCNode;
@class CCGLProgram;
@protocol ArenaLayer;

@interface ShaderArenaBackground : CCNode <ArenaLayer>

 {
    float mInternalScale;
    CGPoint mInternalPosition;
    CCGLProgram *mGridBackgroundShader;
    int mZoomLocation;
    int mOffsetLocation;
    int mTileSizeLocation;
    int mColorMultiplyLocation;
    int mDarkLocation;
}


@property (nonatomic) BOOL darkMode; // ivar: _darkMode
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)createShader;
-(void)listenBackToForeground;
-(id)init;
-(void)onCameraChanged:(struct CGPoint )arg0 scale:(float)arg1 ;
-(void)draw;
-(void)dealloc;


@end


#endif