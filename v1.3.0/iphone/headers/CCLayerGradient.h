// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCLAYERGRADIENT_H
#define CCLAYERGRADIENT_H



@class CCLayerColor;

@interface CCLayerGradient : CCLayerColor {
    BOOL _compressedInterpolation;
}


@property (nonatomic) _ccColorThreeB startColor;
@property (nonatomic) _ccColorThreeB endColor; // ivar: _endColor
@property (nonatomic) unsigned char startOpacity; // ivar: _startOpacity
@property (nonatomic) unsigned char endOpacity; // ivar: _endOpacity
@property (nonatomic) CGPoint vector; // ivar: _vector
@property (nonatomic) BOOL compressedInterpolation;


-(id)init;
-(id)initWithColor:(struct _ccColor4B )arg0 fadingTo:(struct _ccColor4B )arg1 ;
-(id)initWithColor:(struct _ccColor4B )arg0 fadingTo:(struct _ccColor4B )arg1 alongVector:(struct CGPoint )arg2 ;
-(void)updateColor;
+(id)layerWithColor:(struct _ccColor4B )arg0 fadingTo:(struct _ccColor4B )arg1 ;
+(id)layerWithColor:(struct _ccColor4B )arg0 fadingTo:(struct _ccColor4B )arg1 alongVector:(struct CGPoint )arg2 ;


@end


#endif