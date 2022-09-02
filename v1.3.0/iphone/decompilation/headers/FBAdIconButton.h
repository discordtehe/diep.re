// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADICONBUTTON_H
#define FBADICONBUTTON_H


#import <UIKit/UIKit.h>


@interface FBAdIconButton : UIButton

@property (readonly, nonatomic) NSUInteger iconStyle; // ivar: _iconStyle


-(id)initWithIconStyle:(NSUInteger)arg0 ;
-(void)setFillColor:(id)arg0 forState:(NSUInteger)arg1 ;
-(void)drawRect:(struct CGRect )arg0 ;
-(void)setDefaultColorStyle;


@end


#endif