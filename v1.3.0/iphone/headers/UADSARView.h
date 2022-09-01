// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef UADSARVIEW_H
#define UADSARVIEW_H

@protocol MTLCommandQueue;

#import <UIKit/UIKit.h>
#import <CoreImage/CoreImage.h>
#import <CoreFoundation/CoreFoundation.h>
#import <MetalKit/MetalKit.h>
#import <Foundation/Foundation.h>

@protocol MTKViewDelegate;

@interface UADSARView : UIView <MTKViewDelegate>

 {
    id<MTLCommandQueue> *commandQueue;
    CIContext *ciContext;
    *CGColorSpace colorSpace;
    NSInteger deviceOrientation;
    NSInteger interfaceOrientation;
    BOOL sendARFrame;
    BOOL updateWindowSize;
    CGFloat timeOfLastDrawnCameraFrame;
    CIImage *testImage;
    NSMutableDictionary *jsAnchorIdsToObjCAnchorIds;
    NSMutableDictionary *objCAnchorIdsToJSAnchorIds;
    NSMutableDictionary *anchors;
}


@property (nonatomic) float arNear; // ivar: _arNear
@property (nonatomic) float arFar; // ivar: _arFar
@property (retain, nonatomic) id *arSession; // ivar: _arSession
@property (retain, nonatomic) id *arConfiguration; // ivar: _arConfiguration
@property (nonatomic) int arRunOptions; // ivar: _arRunOptions
@property (nonatomic) BOOL drawNextCameraFrame; // ivar: _drawNextCameraFrame
@property (nonatomic) BOOL showCameraFeed; // ivar: _showCameraFeed
@property (nonatomic) CGAffineTransform arVideoTransform; // ivar: _arVideoTransform
@property (nonatomic) CGFloat arVideoScaleX; // ivar: _arVideoScaleX
@property (nonatomic) CGFloat arVideoScaleY; // ivar: _arVideoScaleY
@property (nonatomic) BOOL arVideoScaled; // ivar: _arVideoScaled
@property (retain, nonatomic) MTKView *mtkView; // ivar: _mtkView
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithFrame:(struct CGRect )arg0 ;
-(id)initWithCoder:(id)arg0 ;
-(void)commonInit;
-(void)initAR;
-(void)addAnchor:(id)arg0 withTransform:(id)arg1 ;
-(void)removeAnchor:(id)arg0 ;
-(void)layoutSubviews;
-(void)removeFromSuperview;
-(void)drawInMTKView:(id)arg0 ;
-(void)adjustVideoScaling;
-(void)mtkView:(id)arg0 drawableSizeWillChange:(struct CGSize )arg1 ;
-(void)session:(id)arg0 didFailWithError:(id)arg1 ;
-(void)sessionWasInterrupted:(id)arg0 ;
-(void)sessionInterruptionEnded:(id)arg0 ;
-(void)session:(id)arg0 didAddAnchors:(id)arg1 ;
-(void)session:(id)arg0 didUpdateAnchors:(id)arg1 ;
-(void)session:(id)arg0 didRemoveAnchors:(id)arg1 ;
-(void)session:(id)arg0 didUpdateFrame:(id)arg1 ;
-(id)getPlanesString:(id)arg0 ;
-(id)getAnchorsString:(id)arg0 ;
+(id)getInstance;


@end


#endif