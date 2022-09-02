// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADCHOOSEYOUROWNADCONFIG_H
#define FBADCHOOSEYOUROWNADCONFIG_H


#import <Foundation/Foundation.h>


@interface FBAdChooseYourOwnAdConfig : NSObject

@property (readonly, nonatomic) NSInteger countdownTimeMs; // ivar: _countdownTimeMs
@property (readonly, nonatomic) NSUInteger defaultAdIndex; // ivar: _defaultAdIndex
@property (readonly, nonatomic) NSUInteger pulseAnimationDuration; // ivar: _pulseAnimationDuration
@property (readonly, nonatomic) BOOL shouldShowRating; // ivar: _shouldShowRating
@property (readonly, copy, nonatomic) NSString *timerTextColor; // ivar: _timerTextColor
@property (readonly, copy, nonatomic) NSString *titleTextColor; // ivar: _titleTextColor
@property (readonly, copy, nonatomic) NSString *backgroundColor; // ivar: _backgroundColor
@property (readonly, copy, nonatomic) NSString *timerTextTranslation; // ivar: _timerTextTranslation
@property (readonly, copy, nonatomic) NSString *titleTranslation; // ivar: _titleTranslation
@property (readonly, copy, nonatomic) NSString *secondsKey; // ivar: _secondsKey


-(id)initWithMetadata:(id)arg0 ;


@end


#endif