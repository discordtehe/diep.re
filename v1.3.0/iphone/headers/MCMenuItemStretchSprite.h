// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCMENUITEMSTRETCHSPRITE_H
#define MCMENUITEMSTRETCHSPRITE_H


#import <Foundation/Foundation.h>

@class MCMenuItemSprite;
@class HorizontalStretchFrame;
@protocol CCRGBAProtocol;

@interface MCMenuItemStretchSprite : MCMenuItemSprite <CCRGBAProtocol>



@property (retain, nonatomic) NSString *horizontalStretchFrameDescription; // ivar: _descriptionName
@property (retain, nonatomic) HorizontalStretchFrame *horizontalStretchFrame; // ivar: _horizontalStretchFrame
@property (retain, nonatomic) NSString *disabledHorizontalStretchFrameDescription; // ivar: _disabledDescriptionName
@property (retain, nonatomic) HorizontalStretchFrame *disabledHorizontalStretchFrame; // ivar: _disabledHorizontalStretchFrame
@property (retain, nonatomic) NSString *selectedHorizontalStretchFrameDescription; // ivar: _selectedDescriptionName
@property (retain, nonatomic) HorizontalStretchFrame *selectedHorizontalStretchFrame; // ivar: _selectedHorizontalStretchFrame
@property (nonatomic) _ccColorThreeB color;
@property (readonly, nonatomic) _ccColorThreeB displayedColor;
@property (nonatomic, getter=isCascadeColorEnabled) BOOL cascadeColorEnabled;
@property (nonatomic) unsigned char opacity;
@property (readonly, nonatomic) unsigned char displayedOpacity;
@property (nonatomic, getter=isCascadeOpacityEnabled) BOOL cascadeOpacityEnabled;
@property (nonatomic) _ccColorThreeB emission;
@property (readonly, nonatomic) _ccColorThreeB displayedEmission;
@property (nonatomic, getter=isCascadeEmissionEnabled) BOOL cascadeEmissionEnabled;
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(void)dealloc;
-(void)setContentSize:(struct CGSize )arg0 ;
-(void)didLoadFromCCB;
-(void)setIsEnabled:(BOOL)arg0 ;
-(void)selected;
-(void)unselected;
-(void)applyNormalImageColorMultiplier:(float)arg0 ;
-(void)applyNormalImageColorMultiplierRecursive:(float)arg0 node:(id)arg1 ;


@end


#endif