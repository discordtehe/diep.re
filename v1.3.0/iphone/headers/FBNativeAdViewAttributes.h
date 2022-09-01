// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBNATIVEADVIEWATTRIBUTES_H
#define FBNATIVEADVIEWATTRIBUTES_H


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol NSCopying;

@interface FBNativeAdViewAttributes : NSObject <NSCopying>



@property (copy, nonatomic) NSNumber *bypassAdLoad; // ivar: _bypassAdLoad
@property (copy, nonatomic) NSNumber *skipRegistration; // ivar: _skipRegistration
@property (copy, nonatomic) NSNumber *shouldClip; // ivar: _shouldClip
@property (copy, nonatomic) NSNumber *borderRadius; // ivar: _borderRadius
@property (copy, nonatomic) NSNumber *buttonBorderRadius; // ivar: _buttonBorderRadius
@property (copy, nonatomic) NSNumber *iconBorderRadius; // ivar: _iconBorderRadius
@property (copy, nonatomic) NSNumber *adChoicesBackgroundShown; // ivar: _adChoicesBackgroundShown
@property (retain, nonatomic) UIColor *adChoicesTitleColor; // ivar: _adChoicesTitleColor
@property (retain, nonatomic) UIColor *adChoicesBackgroundColor; // ivar: _adChoicesBackgroundColor
@property (nonatomic) BOOL adChoicesIsHidden; // ivar: _adChoicesIsHidden
@property (copy, nonatomic) NSNumber *ratingEnabled; // ivar: _ratingEnabled
@property (copy, nonatomic) NSNumber *socialContextEnabled; // ivar: _socialContextEnabled
@property (copy, nonatomic) UIColor *backgroundColor; // ivar: _backgroundColor
@property (copy, nonatomic) UIColor *titleColor; // ivar: _titleColor
@property (copy, nonatomic) UIColor *advertiserNameColor; // ivar: _advertiserNameColor
@property (copy, nonatomic) UIColor *adChoicesForegroundColor; // ivar: _adChoicesForegroundColor
@property (copy, nonatomic) UIFont *titleFont; // ivar: _titleFont
@property (copy, nonatomic) UIColor *descriptionColor; // ivar: _descriptionColor
@property (copy, nonatomic) UIFont *descriptionFont; // ivar: _descriptionFont
@property (copy, nonatomic) UIColor *buttonColor; // ivar: _buttonColor
@property (copy, nonatomic) UIColor *buttonTitleColor; // ivar: _buttonTitleColor
@property (copy, nonatomic) UIFont *buttonTitleFont; // ivar: _buttonTitleFont
@property (copy, nonatomic) UIColor *buttonBorderColor; // ivar: _buttonBorderColor
@property (nonatomic, getter=isAutoplayEnabled) BOOL autoplayEnabled; // ivar: _autoplayEnabled


-(id)init;
-(id)initWithDictionary:(id)arg0 ;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
+(id)defaultAttributesForBannerType:(NSInteger)arg0 ;
+(id)internalAttributesForBannerType:(NSInteger)arg0 ;
+(id)defaultAttributesForType:(NSInteger)arg0 ;
+(id)internalAttributesForType:(NSInteger)arg0 ;
+(id)internalAttributesForAttributes:(id)arg0 ;


@end


#endif