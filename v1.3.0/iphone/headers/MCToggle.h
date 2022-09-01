// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCTOGGLE_H
#define MCTOGGLE_H


#import <Foundation/Foundation.h>

@class CCMenuItemToggle;
@class CCMenuItemImage;
@protocol CCRGBAProtocol;

@interface MCToggle : CCMenuItemToggle <CCRGBAProtocol>

 {
    CCMenuItemImage *_onItem;
    CCMenuItemImage *_offItem;
}


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
-(void)updateToggle;
-(void)setOnSpriteFrame:(id)arg0 ;
-(void)setOffSpriteFrame:(id)arg0 ;
-(void)didLoadFromCCB;
-(void)toggleOn;
-(void)toggleOff;


@end


#endif