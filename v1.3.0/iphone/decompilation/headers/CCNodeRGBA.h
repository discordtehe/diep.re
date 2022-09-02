// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCNODERGBA_H
#define CCNODERGBA_H


#import <Foundation/Foundation.h>

@class CCNode;
@protocol TestableCCItem;
@protocol CCRGBAProtocol;

@interface CCNodeRGBA : CCNode <TestableCCItem, CCRGBAProtocol>

 {
    unsigned char _displayedOpacity;
    unsigned char _realOpacity;
    _ccColorThreeB _displayedColor;
    _ccColorThreeB _realColor;
    _ccColorThreeB _displayedEmission;
    _ccColorThreeB _realEmission;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (nonatomic) _ccColorThreeB color;
@property (readonly, nonatomic) _ccColorThreeB displayedColor;
@property (nonatomic, getter=isCascadeColorEnabled) BOOL cascadeColorEnabled; // ivar: _cascadeColorEnabled
@property (nonatomic) unsigned char opacity;
@property (readonly, nonatomic) unsigned char displayedOpacity;
@property (nonatomic, getter=isCascadeOpacityEnabled) BOOL cascadeOpacityEnabled; // ivar: _cascadeOpacityEnabled
@property (nonatomic) _ccColorThreeB emission;
@property (readonly, nonatomic) _ccColorThreeB displayedEmission;
@property (nonatomic, getter=isCascadeEmissionEnabled) BOOL cascadeEmissionEnabled; // ivar: _cascadeEmissionEnabled
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(void)cascadeOpacity;
-(void)updateDisplayedOpacity:(unsigned char)arg0 ;
-(void)cascadeColor;
-(void)updateDisplayedColor:(struct _ccColorThreeB )arg0 ;
-(void)cascadeEmission;
-(void)updateDisplayedEmission:(struct _ccColorThreeB )arg0 ;
-(void)didLoadFromCCB;
-(void)addChild:(id)arg0 z:(NSInteger)arg1 tag:(NSInteger)arg2 ;
-(void)removeChild:(id)arg0 cleanup:(BOOL)arg1 ;
-(void)cascadeCascadablesOfNode:(id)arg0 ;


@end


#endif