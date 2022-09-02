// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef UADSARUTILS_H
#define UADSARUTILS_H


#import <Foundation/Foundation.h>


@interface UADSARUtils : NSObject



+(BOOL)isFrameworkPresent;
+(BOOL)loadFramework;
+(id)sessionCreate;
+(void)arSessionRestart:(id)arg0 withConfiguration:(id)arg1 withOptions:(int)arg2 ;
+(void)sessionPause:(id)arg0 ;
+(void)sessionAddAnchor:(id)arg0 anchor:(id)arg1 ;
+(void)sessionRemoveAnchor:(id)arg0 anchor:(id)arg1 ;
+(void)session:(id)arg0 setDelegate:(id)arg1 ;
+(id)sessionGetCurrentFrame:(id)arg0 ;
+(id)createConfiguration:(char *)arg0 ;
+(id)createConfigurationFromProperties:(id)arg0 ;
+(void)setConfigurationProperty:(id)arg0 name:(id)arg1 value:(id)arg2 ;
+(BOOL)arConfigurationIsSupported:(id)arg0 ;
+(id)arConfigurationSupportedVideoFormats:(id)arg0 ;
+(id)getArConfigurationVideoFormats:(id)arg0 ;
+(void)arConfigurationSetVideoFormat:(id)arg0 format:(id)arg1 ;
+(struct __CVBuffer *)arFrameCapturedImage:(id)arg0 ;
+(struct CGAffineTransform )arFrame:(id)arg0 displayTransformForOrientation:(NSInteger)arg1 viewSize:(struct CGSize )arg2 ;
+(id)arFrameCamera:(id)arg0 ;
+(id)arFrameLightEstimate:(id)arg0 ;
+(id)arPlaneAnchorClass;
+(id)arFaceAnchorClass;
+(id)anchorInitWithTransform:(struct ? )arg0 ;
+(struct ? )anchorTransform:(id)arg0 ;
+(void)arAnchorCenter:(id)arg0 center:(float)arg1 ;
+(void)arAnchorExtent:(id)arg0 extent:(float)arg1 ;
+(id)arAnchorIdentifier:(id)arg0 ;
+(NSInteger)arPlaneAnchorAlignment:(id)arg0 ;
+(struct ? )arCamera:(id)arg0 projectionMatrixForOrientation:(NSInteger)arg1 viewportSize:(struct CGSize )arg2 zNear:(CGFloat)arg3 zFar:(CGFloat)arg4 ;
+(struct ? )arCamera:(id)arg0 viewMatrixForOrientation:(NSInteger)arg1 ;
+(CGFloat)arLightEstimateAmbientIntensity:(id)arg0 ;
+(CGFloat)arLightEstimateAmbientColorTemperature:(id)arg0 ;
+(struct CGSize )sizeForOrientation:(NSInteger)arg0 width:(NSUInteger)arg1 height:(NSUInteger)arg2 ;


@end


#endif