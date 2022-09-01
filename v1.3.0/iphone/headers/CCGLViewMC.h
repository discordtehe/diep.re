// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCGLVIEWMC_H
#define CCGLVIEWMC_H


#import <Foundation/Foundation.h>
#import <OpenGLES/OpenGLES.h>

@protocol CCTouchDelegate;

@interface CCGLViewMC : NSObject {
    BOOL _preserveBackbuffer;
}


@property (readonly, nonatomic) CGRect bounds;
@property (nonatomic) CGFloat contentScaleFactor;
@property (nonatomic) CGSize virtualSize;
@property (readonly, nonatomic) NSString *pixelFormat; // ivar: _pixelformat
@property (readonly, nonatomic) unsigned int depthFormat; // ivar: _depthFormat
@property (readonly, nonatomic) CGSize surfaceSize; // ivar: _size
@property (readonly, nonatomic) EAGLContext *context;
@property (nonatomic) BOOL multiSampling; // ivar: _multiSampling
@property (nonatomic) NSObject<CCTouchDelegate> *touchDelegate; // ivar: _touchDelegate


-(id)initWithFrame:(struct CGRect )arg0 ;
-(id)initWithFrame:(struct CGRect )arg0 pixelFormat:(id)arg1 ;
-(id)initWithFrame:(struct CGRect )arg0 pixelFormat:(id)arg1 depthFormat:(unsigned int)arg2 preserveBackbuffer:(BOOL)arg3 sharegroup:(id)arg4 multiSampling:(BOOL)arg5 numberOfSamples:(unsigned int)arg6 ;
-(void)dealloc;
-(void)swapBuffers;
-(struct CGRect )frame;
-(void)lockOpenGLContext;
-(void)unlockOpenGLContext;
-(struct CGPoint )convertPointFromViewToSurface:(struct CGPoint )arg0 ;
-(struct CGRect )convertRectFromViewToSurface:(struct CGRect )arg0 ;
-(void)touchesBegan:(id)arg0 withEvent:(id)arg1 ;
-(void)touchesMoved:(id)arg0 withEvent:(id)arg1 ;
-(void)touchesEnded:(id)arg0 withEvent:(id)arg1 ;
-(void)touchesCancelled:(id)arg0 withEvent:(id)arg1 ;
+(Class)layerClass;
+(id)viewWithFrame:(struct CGRect )arg0 ;
+(id)viewWithFrame:(struct CGRect )arg0 pixelFormat:(id)arg1 ;
+(id)viewWithFrame:(struct CGRect )arg0 pixelFormat:(id)arg1 depthFormat:(unsigned int)arg2 ;
+(id)viewWithFrame:(struct CGRect )arg0 pixelFormat:(id)arg1 depthFormat:(unsigned int)arg2 preserveBackbuffer:(BOOL)arg3 sharegroup:(id)arg4 multiSampling:(BOOL)arg5 numberOfSamples:(unsigned int)arg6 ;


@end


#endif