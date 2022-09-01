// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADNATIVEADATTRIBUTION_H
#define GADNATIVEADATTRIBUTION_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>
#import <UIKit/UIKit.h>


@interface GADNativeAdAttribution : NSObject

@property (readonly, nonatomic) NSArray *icons; // ivar: _icons
@property (readonly, nonatomic) CGFloat iconPresentationDuration; // ivar: _iconPresentationDuration
@property (readonly, nonatomic) CGFloat iconAnimationDuration; // ivar: _iconAnimationDuration
@property (readonly, copy, nonatomic) NSString *text; // ivar: _text
@property (readonly, copy, nonatomic) UIFont *font; // ivar: _font
@property (readonly, copy, nonatomic) UIColor *textColor; // ivar: _textColor
@property (readonly, copy, nonatomic) UIColor *backgroundColor; // ivar: _backgroundColor


-(id)initWithDictionary:(id)arg0 icons:(id)arg1 ;


@end


#endif