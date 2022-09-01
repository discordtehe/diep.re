// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLEUIFACTORY_H
#define VUNGLEUIFACTORY_H


#import <Foundation/Foundation.h>


@interface VungleUIFactory : NSObject



+(id)vungleButtonWithImage:(id)arg0 ;
+(id)vungleCloseButtonWithImage:(id)arg0 ;
+(id)vungleCTAButtonWithImage:(id)arg0 originalSize:(struct CGSize )arg1 clickArea:(CGFloat)arg2 ;
+(id)vungleProgressBar;
+(id)vungleBlue;
+(id)closeButtonImage;
+(id)callToActionButtonImage;
+(id)muteOnButtonImage;
+(id)muteOffButtonImage;
+(struct CGSize )adjustedButtonSize:(struct CGSize )arg0 clickArea:(CGFloat)arg1 ;
+(CGFloat)adjustedButtonPadding:(CGFloat)arg0 originalSize:(struct CGSize )arg1 adjustedSize:(struct CGSize )arg2 ;


@end


#endif