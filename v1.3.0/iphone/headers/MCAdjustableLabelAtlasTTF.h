// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCADJUSTABLELABELATLASTTF_H
#define MCADJUSTABLELABELATLASTTF_H



@class CCLabelAtlasTTFFont;

@interface MCAdjustableLabelAtlasTTF : CCLabelAtlasTTFFont



-(id)initWithString:(id)arg0 fontName:(id)arg1 fontSize:(CGFloat)arg2 dimensions:(struct CGSize )arg3 hAlignment:(int)arg4 vAlignment:(int)arg5 lineBreakMode:(int)arg6 ;
-(id)initWithString:(id)arg0 fontName:(id)arg1 fontSize:(CGFloat)arg2 dimensions:(struct CGSize )arg3 hAlignment:(int)arg4 vAlignment:(int)arg5 lineBreakMode:(int)arg6 singleLine:(BOOL)arg7 ;
-(void)setDimensions:(struct CGSize )arg0 ;
-(void)setRequestedDimensions:(struct CGSize )arg0 ;
-(struct CGSize )requestedDimensions;
-(void)setMaxFontSize:(CGFloat)arg0 ;
-(CGFloat)maxFontSize;
-(void)setForceSingleLine:(BOOL)arg0 ;
-(BOOL)forceSingleLine;
+(id)labelWithString:(id)arg0 fontName:(id)arg1 fontSize:(CGFloat)arg2 dimensions:(struct CGSize )arg3 hAlignment:(int)arg4 vAlignment:(int)arg5 lineBreakMode:(int)arg6 singleLine:(BOOL)arg7 ;
+(void)setMaxIterations:(unsigned int)arg0 ;
+(void)setStabilizationAceptableError:(float)arg0 ;


@end


#endif