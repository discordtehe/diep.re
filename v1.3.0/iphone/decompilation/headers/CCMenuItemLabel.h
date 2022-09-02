// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCMENUITEMLABEL_H
#define CCMENUITEMLABEL_H

@class CCNode<CCLabelProtocol><CCRGBAProtocol>;


@class CCMenuItem;

@interface CCMenuItemLabel : CCMenuItem {
    CCNode<CCLabelProtocol><CCRGBAProtocol> *_label;
    _ccColorThreeB _colorBackup;
    float _originalScale;
}


@property (nonatomic) _ccColorThreeB disabledColor; // ivar: _disabledColor
@property (nonatomic) CCNode<CCLabelProtocol><CCRGBAProtocol> *label;


-(id)initWithLabel:(id)arg0 target:(id)arg1 selector:(SEL)arg2 ;
-(id)initWithLabel:(id)arg0 block:(id)arg1 ;
-(void)setString:(id)arg0 ;
-(void)activate;
-(void)selected;
-(void)unselected;
-(void)setIsEnabled:(BOOL)arg0 ;
+(id)itemWithLabel:(id)arg0 ;
+(id)itemWithLabel:(id)arg0 target:(id)arg1 selector:(SEL)arg2 ;
+(id)itemWithLabel:(id)arg0 block:(id)arg1 ;


@end


#endif