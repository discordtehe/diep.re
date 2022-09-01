// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBNATIVEADBASE_H
#define FBNATIVEADBASE_H


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <CoreFoundation/CoreFoundation.h>

@class FBDisplayAdController;
@class FBAdProvider;
@class FBNativeAdDataModel;
@class FBAdPlacementDefinition;
@class FBAdImage;
@class FBAdExtraHint;
@protocol FBDisplayAdControllerDelegate;
@protocol UIGestureRecognizerDelegate;
@protocol FBNativeAdBaseDelegate;

@interface FBNativeAdBase : NSObject <FBDisplayAdControllerDelegate, UIGestureRecognizerDelegate>



@property (weak, nonatomic) NSObject<FBNativeAdBaseDelegate> *nativeAdBaseDelegate; // ivar: _nativeAdBaseDelegate
@property (retain, nonatomic) FBDisplayAdController *adController; // ivar: _adController
@property (retain, nonatomic) FBAdProvider *adProvider; // ivar: _adProvider
@property (nonatomic) BOOL hasCalledLoadAd; // ivar: _hasCalledLoadAd
@property (retain, nonatomic) NSHashTable *gestureRecognizers; // ivar: _gestureRecognizers
@property (weak, nonatomic) UIViewController *rootViewController; // ivar: _rootViewController
@property (nonatomic) NSInteger mediaCachePolicy; // ivar: _mediaCachePolicy
@property (retain, nonatomic) NSDate *loadAdStartTime; // ivar: _loadAdStartTime
@property (copy, nonatomic) NSString *placementID; // ivar: _placementID
@property (weak, nonatomic) UIView *nativeAdView; // ivar: _nativeAdView
@property (retain, nonatomic) NSHashTable *clickableViews; // ivar: _clickableViews
@property (nonatomic) BOOL viewabilityValidatorDisabled; // ivar: _viewabilityValidatorDisabled
@property (nonatomic) BOOL didCallDownloadMedia; // ivar: _didCallDownloadMedia
@property (nonatomic, getter=shouldBypassValidation) BOOL bypassValidation; // ivar: _bypassValidation
@property (copy, nonatomic) NSString *lastTouchData; // ivar: _lastTouchData
@property (nonatomic) NSInteger templateId; // ivar: _templateId
@property (nonatomic) NSInteger placementType; // ivar: _placementType
@property (nonatomic) CGFloat firstImpressionTime; // ivar: _firstImpressionTime
@property (retain, nonatomic) FBNativeAdDataModel *dataModel; // ivar: _dataModel
@property (retain, nonatomic) FBAdPlacementDefinition *placementDefinition; // ivar: _placementDefinition
@property (nonatomic) BOOL isHScroll; // ivar: _isHScroll
@property (copy, nonatomic) id *onImpression; // ivar: _onImpression
@property (copy, nonatomic) id *onImpressionMiss; // ivar: _onImpressionMiss
@property (copy, nonatomic) id *onClick; // ivar: _onClick
@property (readonly, copy, nonatomic) NSString *headline;
@property (readonly, copy, nonatomic) NSString *linkDescription;
@property (readonly, copy, nonatomic) NSString *advertiserName;
@property (readonly, copy, nonatomic) NSString *socialContext;
@property (readonly, copy, nonatomic) NSString *callToAction;
@property (readonly, copy, nonatomic) NSString *rawBodyText;
@property (readonly, copy, nonatomic) NSString *bodyText;
@property (readonly, copy, nonatomic) NSString *sponsoredTranslation;
@property (readonly, copy, nonatomic) NSString *adTranslation;
@property (readonly, copy, nonatomic) NSString *promotedTranslation;
@property (readonly, nonatomic) FBAdImage *adChoicesIcon;
@property (readonly, nonatomic) CGFloat aspectRatio;
@property (readonly, copy, nonatomic) NSURL *adChoicesLinkURL;
@property (readonly, copy, nonatomic) NSString *adChoicesText;
@property (readonly, nonatomic) NSInteger adFormatType;
@property (readonly, nonatomic, getter=isAdValid) BOOL adValid;
@property (readonly, nonatomic, getter=isRegistered) BOOL registered;
@property (retain, nonatomic) FBAdExtraHint *extraHint; // ivar: _extraHint
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(id)initWithPlacementID:(id)arg0 templateId:(NSInteger)arg1 placementType:(NSInteger)arg2 ;
-(id)initWithPlacementID:(id)arg0 templateId:(NSInteger)arg1 placementType:(NSInteger)arg2 adProvider:(id)arg3 ;
-(void)dealloc;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
-(void)doLoadAd:(id)arg0 ;
-(void)loadAd;
-(void)loadAdWithMediaCachePolicy:(NSInteger)arg0 ;
-(void)loadAdWithBidPayload:(id)arg0 ;
-(void)loadAdWithBidPayload:(id)arg0 mediaCachePolicy:(NSInteger)arg1 ;
// -(void)populateFromDataModel:(id)arg0 placementDefinition:(id)arg1 onImpression:(id)arg2 onImpressionMiss:(unk)arg3 onClick:(id)arg4  ;
-(void)displayAdControllerLoaded:(id)arg0 ;
-(void)downloadMedia;
-(void)downloadMediaFromData:(id)arg0 completion:(id)arg1 ;
// -(void)displayAdController:(id)arg0 presentedData:(id)arg1 onImpression:(id)arg2 onImpressionMiss:(unk)arg3 onClick:(id)arg4  ;
-(void)displayAdControllerStopped:(id)arg0 ;
-(void)displayAdControllerImpression:(id)arg0 ;
-(void)displayAdControllerClickThrough:(id)arg0 ;
-(void)displayAdControllerUserClosed:(id)arg0 ;
-(void)displayAdController:(id)arg0 didFailWithError:(id)arg1 ;
-(void)disableViewabilityValidator;
-(BOOL)isValidForTapGestures;
-(void)registerViewForInteraction:(id)arg0 viewController:(id)arg1 clickableViews:(id)arg2 viewToCheckForViewability:(id)arg3 ;
-(void)unregisterView;
-(void)unregisterViewInternal;
-(void)logImpressionMissWithReason:(NSInteger)arg0 ;
-(id)generateLoggingData;
-(id)generateLoggingDataWithExtraData:(id)arg0 ;
-(id)generateViewPostData;
-(id)generateViewLogging;
-(id)generateLoggingWithView:(id)arg0 withClickableViews:(id)arg1 ;
-(id)loggingDataForView:(id)arg0 withSubviews:(BOOL)arg1 ;
-(id)generateViewSnapshot;
-(id)generateViewSnapshotData;
-(void)detachTapGestureRecognizers;
-(void)handleTap:(id)arg0 ;
-(void)handleTap:(id)arg0 withEvent:(id)arg1 ;
-(id)generateTapLoggingWithLocation:(struct CGPoint )arg0 viewTag:(NSUInteger)arg1 inRect:(struct CGRect )arg2 ;
-(void)tellDelegateThatWeDidFailWithError:(id)arg0 ;
-(void)logImpressionWithExtraData:(id)arg0 ;
-(BOOL)criteriasForLoggingImpressionAreMet;
-(id)icon;
-(id)adViewAttributes;
-(BOOL)gestureRecognizerShouldBegin:(id)arg0 ;
+(id)requests;
+(id)viewToNativeAdMap;
+(void)registerOutstandingRequest:(id)arg0 ;
+(void)unregisterOutstandingRequest:(id)arg0 ;
+(id)fakeNativeAdBase;
+(id)nativeAdWithPlacementId:(id)arg0 bidPayload:(id)arg1 error:(*id)arg2 ;


@end


#endif