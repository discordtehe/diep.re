// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISNVIEWCONTROLLERPRESENTATIONCONFIGURATION_H
#define ISNVIEWCONTROLLERPRESENTATIONCONFIGURATION_H


#import <Foundation/Foundation.h>


@interface ISNViewControllerPresentationConfiguration : NSObject

@property (nonatomic) CGFloat fadeTime; // ivar: _fadeTime
@property (nonatomic) NSInteger ModalPresentationStyle; // ivar: _ModalPresentationStyle
@property (nonatomic) BOOL hideStatusBar; // ivar: _hideStatusBar
@property (nonatomic) BOOL animateIn; // ivar: _animateIn
@property (nonatomic) BOOL animateOut; // ivar: _animateOut
@property (nonatomic) BOOL calcTopViewController; // ivar: _calcTopViewController


+(id)defaultConfiguration;


@end


#endif