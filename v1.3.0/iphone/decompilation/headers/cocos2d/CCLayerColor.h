// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCLAYERCOLOR_H
#define CCLAYERCOLOR_H


#import <Foundation/Foundation.h>

@class CCLayerRGBA;
@protocol CCBlendProtocol;

@interface CCLayerColor : CCLayerRGBA <CCBlendProtocol>

 {
    _ccVertex2F _squareVertices;
    _ccColor4F _squareColors;
}


@property (nonatomic) _ccBlendFunc blendFunc; // ivar: _blendFunc
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(id)initWithColor:(struct _ccColor4B )arg0 width:(float)arg1 height:(float)arg2 ;
-(id)initWithColor:(struct _ccColor4B )arg0 ;
-(void)setContentSize:(struct CGSize )arg0 ;
-(void)changeWidth:(float)arg0 height:(float)arg1 ;
-(void)changeWidth:(float)arg0 ;
-(void)changeHeight:(float)arg0 ;
-(void)updateColor;
-(void)draw;
-(void)setColor:(struct _ccColorThreeB )arg0 ;
-(void)setOpacity:(unsigned char)arg0 ;
-(void)cascadeColor;
-(void)cascadeOpacity;
-(void)didLoadFromCCB;
-(void)updateDisplayedColor:(struct _ccColorThreeB )arg0 ;
-(void)updateDisplayedOpacity:(unsigned char)arg0 ;
+(id)layerWithColor:(struct _ccColor4B )arg0 width:(float)arg1 height:(float)arg2 ;
+(id)layerWithColor:(struct _ccColor4B )arg0 ;


@end


#endif