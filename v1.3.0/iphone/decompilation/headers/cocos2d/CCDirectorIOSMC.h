// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCDIRECTORIOSMC_H
#define CCDIRECTORIOSMC_H



@class CCDirectorMC;
@class CCTouchDispatcher;

@interface CCDirectorIOSMC : CCDirectorMC {
    BOOL _isContentScaleSupported;
    CCTouchDispatcher *_touchDispatcher;
    NSUInteger _t0;
}


@property (nonatomic) BOOL isRunningOnMessenger; // ivar: _isRunningOnMessenger


-(id)init;
-(void)dealloc;
-(void)drawScene;
-(void)setViewport;
-(void)setProjection:(int)arg0 ;
-(void)runWithScene:(id)arg0 ;
-(void)drawSceneOnThread;
-(id)touchDispatcher;
-(void)setTouchDispatcher:(id)arg0 ;
-(CGFloat)contentScaleFactor;
-(void)setContentScaleFactor:(CGFloat)arg0 ;
-(void)updateContentScaleFactor;
-(BOOL)enableRetinaDisplay:(BOOL)arg0 ;
-(void)reshapeProjection:(struct CGSize )arg0 ;
-(struct CGPoint )convertToGL:(struct CGPoint )arg0 ;
-(struct CGPoint )convertTouchToGL:(id)arg0 ;
-(struct CGPoint )convertToUI:(struct CGPoint )arg0 ;
-(void)end;
-(void)setView:(id)arg0 ;
-(void)getFPSImageData:(*char *)arg0 length:(*NSUInteger)arg1 ;


@end


#endif