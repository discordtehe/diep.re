// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADDYNAMICHEIGHTSEARCHREQUEST_H
#define GADDYNAMICHEIGHTSEARCHREQUEST_H


#import <CoreFoundation/CoreFoundation.h>
#import <Foundation/Foundation.h>

@class GADRequest;

@interface GADDynamicHeightSearchRequest : GADRequest {
    NSMutableDictionary *_requestParameters;
}


@property (copy, nonatomic) NSString *query; // ivar: _query
@property (nonatomic) NSInteger adPage; // ivar: _adPage
@property (nonatomic) BOOL adTestEnabled; // ivar: _adTestEnabled
@property (copy, nonatomic) NSString *channel; // ivar: _channel
@property (copy, nonatomic) NSString *hostLanguage; // ivar: _hostLanguage
@property (copy, nonatomic) NSString *locationExtensionTextColor; // ivar: _locationExtensionTextColor
@property (nonatomic) CGFloat locationExtensionFontSize; // ivar: _locationExtensionFontSize
@property (nonatomic) BOOL clickToCallExtensionEnabled; // ivar: _clickToCallExtensionEnabled
@property (nonatomic) BOOL locationExtensionEnabled; // ivar: _locationExtensionEnabled
@property (nonatomic) BOOL plusOnesExtensionEnabled; // ivar: _plusOnesExtensionEnabled
@property (nonatomic) BOOL sellerRatingsExtensionEnabled; // ivar: _sellerRatingsExtensionEnabled
@property (nonatomic) BOOL siteLinksExtensionEnabled; // ivar: _siteLinksExtensionEnabled
@property (copy, nonatomic) NSString *CSSWidth; // ivar: _CSSWidth
@property (nonatomic) NSInteger numberOfAds; // ivar: _numberOfAds
@property (copy, nonatomic) NSString *fontFamily; // ivar: _fontFamily
@property (copy, nonatomic) NSString *attributionFontFamily; // ivar: _attributionFontFamily
@property (nonatomic) CGFloat annotationFontSize; // ivar: _annotationFontSize
@property (nonatomic) CGFloat attributionFontSize; // ivar: _attributionFontSize
@property (nonatomic) CGFloat descriptionFontSize; // ivar: _descriptionFontSize
@property (nonatomic) CGFloat domainLinkFontSize; // ivar: _domainLinkFontSize
@property (nonatomic) CGFloat titleFontSize; // ivar: _titleFontSize
@property (copy, nonatomic) NSString *adBorderColor; // ivar: _adBorderColor
@property (copy, nonatomic) NSString *adSeparatorColor; // ivar: _adSeparatorColor
@property (copy, nonatomic) NSString *annotationTextColor; // ivar: _annotationTextColor
@property (copy, nonatomic) NSString *attributionTextColor; // ivar: _attributionTextColor
@property (copy, nonatomic) NSString *backgroundColor; // ivar: _backgroundColor
@property (copy, nonatomic) NSString *borderColor; // ivar: _borderColor
@property (copy, nonatomic) NSString *domainLinkColor; // ivar: _domainLinkColor
@property (copy, nonatomic) NSString *textColor; // ivar: _textColor
@property (copy, nonatomic) NSString *titleLinkColor; // ivar: _titleLinkColor
@property (copy, nonatomic) NSString *adBorderCSSSelections; // ivar: _adBorderCSSSelections
@property (nonatomic) CGFloat adjustableLineHeight; // ivar: _adjustableLineHeight
@property (nonatomic) CGFloat attributionBottomSpacing; // ivar: _attributionBottomSpacing
@property (copy, nonatomic) NSString *borderCSSSelections; // ivar: _borderCSSSelections
@property (nonatomic) BOOL titleUnderlineHidden; // ivar: _titleUnderlineHidden
@property (nonatomic) BOOL boldTitleEnabled; // ivar: _boldTitleEnabled
@property (nonatomic) CGFloat verticalSpacing; // ivar: _verticalSpacing
@property (nonatomic) BOOL detailedAttributionExtensionEnabled; // ivar: _detailedAttributionExtensionEnabled
@property (nonatomic) BOOL longerHeadlinesExtensionEnabled; // ivar: _longerHeadlinesExtensionEnabled


-(id)init;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
-(void)setAdvancedOptionValue:(id)arg0 forKey:(id)arg1 ;
-(void)parameterHelperSetValue:(id)arg0 forKey:(id)arg1 ;
-(id)dynamicHeightAdURLFragmentsWithAdUnitID:(id)arg0 ;
-(id)CSADynamicHeightSearchRequestURLWithAdUnitID:(id)arg0 ;


@end


#endif