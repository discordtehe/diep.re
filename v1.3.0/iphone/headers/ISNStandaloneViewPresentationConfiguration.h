// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISNSTANDALONEVIEWPRESENTATIONCONFIGURATION_H
#define ISNSTANDALONEVIEWPRESENTATIONCONFIGURATION_H


#import <Foundation/Foundation.h>


@interface ISNStandaloneViewPresentationConfiguration : NSObject

@property (nonatomic) CGFloat fadeTime; // ivar: _fadeTime
@property (nonatomic) BOOL animateIn; // ivar: _animateIn
@property (nonatomic) BOOL animateOut; // ivar: _animateOut
@property (nonatomic) BOOL calcTopViewController; // ivar: _calcTopViewController


+(id)defaultConfiguration;


@end


#endif