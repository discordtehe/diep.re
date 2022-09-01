// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBNATIVEADDATAMODEL_H
#define FBNATIVEADDATAMODEL_H


#import <CoreFoundation/CoreFoundation.h>
#import <Foundation/Foundation.h>

@class FBAdDataModel;
@class FBAdImage;
@class FBNativeAdViewAttributes;
@class FBPlayableAdDataModel;
@protocol FBAdReportingData;
@protocol FBAdCreativeURLContaining;

@interface FBNativeAdDataModel : FBAdDataModel <FBAdReportingData, FBAdCreativeURLContaining>

 {
    NSInteger _cachedType;
}


@property (nonatomic) NSInteger placementType; // ivar: _placementType
@property (readonly, copy, nonatomic) NSDictionary *metadata; // ivar: _metadata
@property (readonly, copy, nonatomic) NSURL *destinationURL; // ivar: _destinationURL
@property (readonly, copy, nonatomic) NSString *headline; // ivar: _headline
@property (readonly, copy, nonatomic) NSString *linkDescription; // ivar: _linkDescription
@property (readonly, copy, nonatomic) NSString *advertiserName; // ivar: _advertiserName
@property (readonly, copy, nonatomic) NSString *sponsoredTranslation; // ivar: _sponsoredTranslation
@property (readonly, copy, nonatomic) NSString *adTranslation; // ivar: _adTranslation
@property (readonly, copy, nonatomic) NSString *promotedTranslation; // ivar: _promotedTranslation
@property (readonly, copy, nonatomic) NSString *localizedDelayClickText; // ivar: _localizedDelayClickText
@property (readonly, copy, nonatomic) NSString *localizedCancelText; // ivar: _localizedCancelText
@property (readonly, copy, nonatomic) NSString *localizedSponsoredText; // ivar: _localizedSponsoredText
@property (readonly, copy, nonatomic) NSString *localizedSkipText; // ivar: _localizedSkipText
@property (readonly, copy, nonatomic) NSString *localizedRewardInText; // ivar: _localizedRewardInText
@property (readonly, copy, nonatomic) NSString *landscapeBackgroundColor; // ivar: _landscapeBackgroundColor
@property (readonly, copy, nonatomic) NSString *landscapeCallToActionColor; // ivar: _landscapeCallToActionColor
@property (readonly, copy, nonatomic) NSString *landscapeCallToActionTextColor; // ivar: _landscapeCallToActionTextColor
@property (readonly, copy, nonatomic) NSString *portraitBackgroundColor; // ivar: _portraitBackgroundColor
@property (readonly, copy, nonatomic) NSString *portraitCallToActionColor; // ivar: _portraitCallToActionColor
@property (readonly, copy, nonatomic) NSString *portraitCallToActionTextColor; // ivar: _portraitCallToActionTextColor
@property (readonly, copy, nonatomic) NSArray *screenshots; // ivar: _screenshots
@property (readonly, copy, nonatomic) NSNumber *starRatingValue; // ivar: _starRatingValue
@property (readonly, copy, nonatomic) NSNumber *starRatingCount; // ivar: _starRatingCount
@property (readonly, copy, nonatomic) NSString *category; // ivar: _category
@property (readonly, nonatomic) BOOL showEndCard; // ivar: _showEndCard
@property (readonly, copy, nonatomic) NSString *title; // ivar: _title
@property (readonly, copy, nonatomic) NSString *subtitle; // ivar: _subtitle
@property (readonly, copy, nonatomic) NSString *socialContext; // ivar: _socialContext
@property (readonly, copy, nonatomic) NSString *callToAction; // ivar: _callToAction
@property (readonly, nonatomic) FBAdImage *icon; // ivar: _icon
@property (readonly, copy, nonatomic) NSURL *iconURL; // ivar: _iconURL
@property (readonly, nonatomic) FBAdImage *image; // ivar: _image
@property (readonly, copy, nonatomic) NSURL *imageURL; // ivar: _imageURL
@property (readonly, copy, nonatomic) NSString *body; // ivar: _body
@property (readonly, copy, nonatomic) NSURL *commandURL; // ivar: _commandURL
@property (readonly, nonatomic) BOOL manualImpressionEnabled; // ivar: _manualImpressionEnabled
@property (readonly, nonatomic) BOOL viewJSONLoggingEnabled; // ivar: _viewJSONLoggingEnabled
@property (readonly, nonatomic) BOOL viewSnapshotLoggingEnabled; // ivar: _viewSnapshotLoggingEnabled
@property (readonly, nonatomic) NSInteger snapshotDelayPostInSecond; // ivar: _snapshotDelayPostInSecond
@property (readonly, nonatomic) CGFloat snapshotCompressionQuality; // ivar: _snapshotCompressionQuality
@property (readonly, nonatomic) FBAdImage *adChoicesIcon; // ivar: _adChoicesIcon
@property (readonly, copy, nonatomic) NSURL *adChoicesLinkURL; // ivar: _adChoicesLinkURL
@property (readonly, copy, nonatomic) NSString *adChoicesText; // ivar: _adChoicesText
@property (readonly, nonatomic) BOOL fullyClickable; // ivar: _fullyClickable
@property (readonly, copy, nonatomic) NSURL *videoURL; // ivar: _videoURL
@property (readonly, copy, nonatomic) NSNumber *videoAutoplayEnabled; // ivar: _videoAutoplayEnabled
@property (readonly, nonatomic) BOOL audioMuted; // ivar: _audioMuted
@property (readonly, nonatomic) ? forcedViewTime; // ivar: _forcedViewTime
@property (readonly, nonatomic) NSInteger orientation; // ivar: _orientation
@property (readonly, nonatomic) FBNativeAdViewAttributes *adViewAttributes; // ivar: _adViewAttributes
@property (readonly, copy, nonatomic) NSArray *multiProductAdContent; // ivar: _multiProductAdContent
@property (readonly, nonatomic, getter=isValid) BOOL valid;
@property (readonly, nonatomic) NSInteger type;
@property (readonly, nonatomic) BOOL videoHasAudio; // ivar: _videoHasAudio
@property (readonly, nonatomic) FBPlayableAdDataModel *playableAdDataModel; // ivar: _playableAdDataModel
@property (readonly, nonatomic, getter=isWatchAndInstallEligible) BOOL watchAndInstallEligible; // ivar: _watchAndInstallEligible
@property (readonly, nonatomic, getter=isWatchAndBrowseEligible) BOOL isWatchAndBrowseEligible; // ivar: _isWatchAndBrowseEligible
@property (readonly, copy, nonatomic) NSString *adCreativeType; // ivar: _adCreativeType
@property (readonly, nonatomic) BOOL showIntroCardTransition; // ivar: _showIntroCardTransition
@property (readonly, nonatomic) BOOL showExitTransition; // ivar: _showExitTransition
@property (readonly, copy, nonatomic) NSString *inlineClientToken;
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithMetadata:(id)arg0 ;
-(id)initWithMetadata:(id)arg0 placementType:(NSInteger)arg1 ;
-(id)cacheKeysForCreatives;
-(id)processMultiProductAdMetadata:(id)arg0 ;
-(BOOL)isAppStoreIDPresent;
+(void)initialize;


@end


#endif