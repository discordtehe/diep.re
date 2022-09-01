// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef SIMPLEARENABACKGROUND_H
#define SIMPLEARENABACKGROUND_H


#import <Foundation/Foundation.h>

@class CCNode;
@class CCGLProgram;
@protocol ArenaLayer;

@interface SimpleArenaBackground : CCNode <ArenaLayer>

 {
    float mInternalScale;
    CCGLProgram *mColorShader;
    int mColorLocation;
}


@property (nonatomic) BOOL darkMode; // ivar: _darkMode
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(void)onCameraChanged:(struct CGPoint )arg0 scale:(float)arg1 ;
-(void)draw;


@end


#endif