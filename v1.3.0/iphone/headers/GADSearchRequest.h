// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADSEARCHREQUEST_H
#define GADSEARCHREQUEST_H


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class GADRequest;

@interface GADSearchRequest : GADRequest

@property (copy, nonatomic) NSString *query; // ivar: _query
@property (readonly, copy, nonatomic) UIColor *backgroundColor; // ivar: _backgroundColor
@property (readonly, copy, nonatomic) UIColor *gradientFrom; // ivar: _gradientFrom
@property (readonly, copy, nonatomic) UIColor *gradientTo; // ivar: _gradientTo
@property (copy, nonatomic) UIColor *headerColor; // ivar: _headerColor
@property (copy, nonatomic) UIColor *descriptionTextColor; // ivar: _descriptionTextColor
@property (copy, nonatomic) UIColor *anchorTextColor; // ivar: _anchorTextColor
@property (copy, nonatomic) NSString *fontFamily; // ivar: _fontFamily
@property (nonatomic) NSUInteger headerTextSize; // ivar: _headerTextSize
@property (copy, nonatomic) UIColor *borderColor; // ivar: _borderColor
@property (nonatomic) NSUInteger borderType; // ivar: _borderType
@property (nonatomic) NSUInteger borderThickness; // ivar: _borderThickness
@property (copy, nonatomic) NSString *customChannels; // ivar: _customChannels
@property (nonatomic) NSUInteger callButtonColor; // ivar: _callButtonColor


-(id)copyWithZone:(struct _NSZone *)arg0 ;
-(void)setBackgroundSolid:(id)arg0 ;
-(void)setBackgroundGradientFrom:(id)arg0 toColor:(id)arg1 ;
-(id)additionalSignals;


@end


#endif