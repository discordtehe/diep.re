// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADJUSTABLELABELTTF_H
#define ADJUSTABLELABELTTF_H



@class CCLabelTTF;
@class CCDrawNode;

@interface AdjustableLabelTTF : CCLabelTTF {
    float minimumScale_;
    int adjustableLabelType_;
    CGFloat originalFontSize_;
    CCDrawNode *_dimensionsDebug;
    CGSize configDimensions_;
}




-(id)initAdjustableWithString:(id)arg0 dimensions:(struct CGSize )arg1 alignment:(int)arg2 fontName:(id)arg3 fontSize:(CGFloat)arg4 ;
-(id)initAdjustableWithString:(id)arg0 dimensions:(struct CGSize )arg1 alignment:(int)arg2 vertAlignment:(int)arg3 lineBreakMode:(int)arg4 fontName:(id)arg5 fontSize:(CGFloat)arg6 ;
-(id)initAdjustableWithString:(id)arg0 dimensions:(struct CGSize )arg1 alignment:(int)arg2 vertAlignment:(int)arg3 lineBreakMode:(int)arg4 fontName:(id)arg5 fontSize:(CGFloat)arg6 adjustableLabelType:(int)arg7 minimumScale:(float)arg8 ;
-(id)initWithString:(id)arg0 fontName:(id)arg1 fontSize:(CGFloat)arg2 width:(CGFloat)arg3 minimumScale:(CGFloat)arg4 ;
-(struct CGSize )fitDimensionForString:(id)arg0 dimensions:(struct CGSize )arg1 fontSize:(*id)arg2 fontName:(id)arg3 ;
-(float)fitScaleforString:(id)arg0 fontName:(id)arg1 fontSize:(CGFloat)arg2 dimension:(struct CGSize )arg3 minimumScale:(CGFloat)arg4 ;
-(void)setString:(id)arg0 ;
-(void)setString:(id)arg0 andAdjust:(BOOL)arg1 ;
-(BOOL)updateTexture;
-(void)setMinimumScale:(float)arg0 ;
-(void)setConfigDimensions:(struct CGSize )arg0 ;
-(void)setAdjustableLabelType:(int)arg0 ;
-(float)minimumFontScale;
-(struct CGSize )configDimensions;
-(int)adjustableLabelType;
-(void)setMinimumFontScale:(float)arg0 ;
+(id)labelWithString:(id)arg0 dimensions:(struct CGSize )arg1 alignment:(int)arg2 fontName:(id)arg3 fontSize:(CGFloat)arg4 ;
+(id)labelWithString:(id)arg0 dimensions:(struct CGSize )arg1 alignment:(int)arg2 vertAlignment:(int)arg3 lineBreakMode:(int)arg4 fontName:(id)arg5 fontSize:(CGFloat)arg6 ;
+(id)labelWithString:(id)arg0 fontName:(id)arg1 fontSize:(CGFloat)arg2 width:(CGFloat)arg3 minimumScale:(CGFloat)arg4 ;
+(id)labelWithString:(id)arg0 fontName:(id)arg1 fontSize:(CGFloat)arg2 dimensions:(struct CGSize )arg3 hAlignment:(int)arg4 ;


@end


#endif