// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADUTILITY_H
#define FBADUTILITY_H


#import <Foundation/Foundation.h>


@interface FBAdUtility : NSObject



+(void)showTwoStepConfirmationDialogFrom:(id)arg0 withToken:(id)arg1 withExtraData:(id)arg2 completionHandler:(id)arg3 ;
+(void)showTwoStepConfirmationDialogFrom:(id)arg0 completionHandler:(id)arg1 ;
+(void)markView:(id)arg0 ;
+(BOOL)isViewMarked:(id)arg0 ;
+(id)findAdInViewController:(id)arg0 ;
+(id)findAdOnScreen;
+(void)setApplicationStatusBarHidden:(BOOL)arg0 ;
+(id)topViewControllerOverride;
+(void)setTopViewControllerOverride:(id)arg0 ;
+(id)topViewController;
+(id)viewControllerFromView:(id)arg0 ;
+(id)traverseResponderChainForViewController:(id)arg0 ;
+(id)currentWindow;
+(void)traverseView:(id)arg0 withBlock:(id)arg1 ;
// +(void)loadRemoteImagesWithURLs:(id)arg0 withBlock:(id)arg1 retry:(unk)arg2  ;
+(void)loadRemoteImageWithURL:(id)arg0 withBlock:(id)arg1 ;
// +(void)loadRemoteImageWithURL:(id)arg0 withBlock:(id)arg1 retry:(unk)arg2  ;
// +(void)loadRemoteImageWithURL:(id)arg0 withBlock:(id)arg1 queue:(unk)arg2 retry:(id)arg3  ;
+(void)loadRemoteVideoWithURL:(id)arg0 withBlock:(id)arg1 ;
+(void)loadRemoteMarkupWithURL:(id)arg0 withBlock:(id)arg1 ;
+(void)animateWithFadeIn:(id)arg0 completion:(id)arg1 ;
// +(void)animateWithFadeIn:(id)arg0 customAnimations:(id)arg1 completion:(unk)arg2  ;
+(void)animateWithFadeOut:(id)arg0 completion:(id)arg1 ;
// +(void)animateWithFadeOut:(id)arg0 customAnimations:(id)arg1 completion:(unk)arg2  ;
// +(void)animateWithFade:(BOOL)arg0 views:(id)arg1 animations:(id)arg2 completion:(unk)arg3  ;
+(void)animateWithFadeIn:(id)arg0 duration:(CGFloat)arg1 completion:(id)arg2 ;
// +(void)animateWithFadeIn:(id)arg0 duration:(CGFloat)arg1 customAnimations:(id)arg2 completion:(unk)arg3  ;
+(void)animateWithFadeOut:(id)arg0 duration:(CGFloat)arg1 completion:(id)arg2 ;
// +(void)animateWithFadeOut:(id)arg0 duration:(CGFloat)arg1 customAnimations:(id)arg2 completion:(unk)arg3  ;
// +(void)animateWithFade:(BOOL)arg0 duration:(CGFloat)arg1 views:(id)arg2 animations:(id)arg3 completion:(unk)arg4  ;
// +(void)animateWithStandardAnimations:(id)arg0 duration:(unk)arg1 completion:(CGFloat)arg2  ;
// +(void)animateWithStandardAnimations:(id)arg0 duration:(unk)arg1 options:(CGFloat)arg2 completion:(NSUInteger)arg3  ;
// +(void)animateEnabled:(BOOL)arg0 withStandardAnimations:(id)arg1 duration:(unk)arg2 completion:(CGFloat)arg3  ;
// +(void)animateEnabled:(BOOL)arg0 withStandardAnimations:(id)arg1 duration:(unk)arg2 options:(CGFloat)arg3 completion:(NSUInteger)arg4  ;
// +(void)animateEnabled:(BOOL)arg0 withTransactionBlock:(id)arg1 duration:(unk)arg2 completion:(CGFloat)arg3  ;
// +(void)animateWithStandardAnimations:(id)arg0 completion:(unk)arg1  ;
+(id)allInteractableTargets:(id)arg0 ;
+(id)allInteractableTargets:(id)arg0 excluding:(id)arg1 ;
+(id)snapshotOfView:(id)arg0 withBlock:(id)arg1 ;
+(id)snapshotOfView:(id)arg0 withRect:(struct CGRect )arg1 withBlock:(id)arg2 ;
+(BOOL)isAdSizeType:(struct FBAdSize )arg0 sameWith:(struct FBAdSize )arg1 ;
+(struct CGSize )sizeThatFits:(struct CGSize )arg0 isFlexibileAdSize:(BOOL)arg1 actualAdSize:(struct CGSize )arg2 ;
+(NSInteger)getTemplateID:(struct FBAdSize )arg0 ;
+(struct FBAdSize )adSizeForAdTemplateID:(NSInteger)arg0 ;
+(BOOL)isValidAdTemplateIdValue:(NSInteger)arg0 ;
+(id)imageWithColor:(id)arg0 ;
+(BOOL)isFBAdScheme:(id)arg0 ;
+(struct ? )timeUntilSkipOrEndForTime:(struct ? )arg0 duration:(struct ? )arg1 forcedViewTime:(struct ? )arg2 ;
+(BOOL)enforceTwoStepConfirmation;
+(id)parseQueryString:(id)arg0 ;
+(id)parseQuery:(id)arg0 ;
+(id)storeSheetParameters:(id)arg0 ;
+(id)createQueryParameterFromKey:(id)arg0 object:(id)arg1 ;
+(id)createQueryStringFromParameters:(id)arg0 ;
+(id)currentLocale;
+(void)cleanCurrentUserAgent;
+(void)currentUserAgentWithBlock:(id)arg0 ;
+(void)currentUserAgentV1WithBlock:(id)arg0 ;
+(void)currentUserAgentV2WithBlock:(id)arg0 ;
+(id)generateUserAgentStringFromRawString:(id)arg0 ;
+(id)cleanUserAgentString:(id)arg0 ;
+(id)getObjectFromJSONString:(id)arg0 ;
+(id)getObjectFromJSONData:(id)arg0 ;
+(id)getJSONStringFromObject:(id)arg0 ;
+(id)getObjectFromPropertyList:(id)arg0 ;
+(id)getPropertyListFromObject:(id)arg0 ;
+(id)attemptRecoveryOfObject:(id)arg0 ofClass:(Class)arg1 ;
+(BOOL)isStringEmpty:(id)arg0 ;
+(BOOL)isStringNilEmptyOrWhiteSpace:(id)arg0 ;
+(id)stringValueForBool:(BOOL)arg0 ;
+(void)displayDebugMessage:(id)arg0 ;
+(void)displayVerboseDebugMessage:(id)arg0 ;
+(void)logTracker:(id)arg0 withExtraData:(id)arg1 ;
+(void)sendRequestInternal:(id)arg0 withExtraData:(id)arg1 withPostData:(id)arg2 ;
+(id)touchDictionaryForGesture:(id)arg0 delayTime:(id)arg1 ;
+(id)touchDictionaryForTouches:(id)arg0 delayTime:(id)arg1 ;
+(id)touchDictionaryForEvent:(id)arg0 delayTime:(id)arg1 ;
+(id)touchDictionaryWithStartLocation:(struct CGPoint )arg0 currentLocation:(struct CGPoint )arg1 endLocation:(struct CGPoint )arg2 startTime:(CGFloat)arg3 endTime:(CGFloat)arg4 touchForce:(id)arg5 touchRadius:(id)arg6 delayTime:(id)arg7 ;
+(BOOL)isDynamicLibrary;
+(BOOL)isDebuggerAttached;
+(BOOL)isTestFlightBuild;
+(BOOL)isAdHocBuild;
+(BOOL)isBuiltWithReactNative;
// +(void)startObservingBackgroundNotifications:(id)arg0 usingBackgroundBlock:(id)arg1 usingForegroundBlock:(unk)arg2  ;
+(void)stopObservingBackgroundNotifications:(id)arg0 ;
+(BOOL)isAdvertisingTrackingEnabled;
+(id)getAdvertisingIdentifier;
+(id)getFBLoginASID;
+(id)userHashedPIIData;
+(id)anonymousIdentifier;
+(void)persistAnonymousID:(id)arg0 ;
+(id)persistenceFilePath:(id)arg0 ;
+(id)retrievePersistedAnonymousID;
+(BOOL)isArbitraryLoadAllowed;
+(id)testHashForSelf;
+(id)testHashForAdvertiserID:(id)arg0 ;
+(CGFloat)deviceVolume;
+(BOOL)canOpenURLInInternalBrowser:(id)arg0 ;
+(NSInteger)interfaceOrientationFromServerOrientation:(NSInteger)arg0 ;
+(NSInteger)serverOrientationFromInterfaceOrientation:(NSInteger)arg0 ;
+(BOOL)interfaceOrientationMaskSupportsPortrait:(NSUInteger)arg0 ;
+(BOOL)interfaceOrientationMaskSupportsLandscape:(NSUInteger)arg0 ;
+(NSInteger)serverOrientationFromInterfaceOrientationMask:(NSUInteger)arg0 ;
+(NSUInteger)supportedInterfaceOrientationsForWindow:(id)arg0 ;
+(BOOL)enforceAdClickguard:(CGFloat)arg0 ;
+(BOOL)enforceAdClickguard:(CGFloat)arg0 withToken:(id)arg1 withExtraData:(id)arg2 ;
+(void)initialize;
+(void)initializeAudienceNetwork;
+(void)enableCrashReporting;
+(BOOL)safeObjcSetAssociatedObject:(id)arg0 key:(*void)arg1 value:(id)arg2 objc_AssociationPolicy:(NSUInteger)arg3 ;


@end


#endif