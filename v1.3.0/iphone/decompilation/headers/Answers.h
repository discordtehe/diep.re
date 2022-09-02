// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ANSWERS_H
#define ANSWERS_H


#import <Foundation/Foundation.h>

@class ANSAnswersController;
@protocol FABKit;

@interface Answers : NSObject <FABKit>



@property (retain, nonatomic) ANSAnswersController *answersController; // ivar: _answersController
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)configureLogging;
-(void)startWithBetaToken:(id)arg0 ;
+(id)sharedInstance;
+(void)startWithBetaToken:(id)arg0 ;
+(void)logPreviousSessionCrashedOnDate:(id)arg0 ;
+(void)logInviteWithMethod:(id)arg0 customAttributes:(id)arg1 ;
+(void)logSignUpWithMethod:(id)arg0 success:(id)arg1 customAttributes:(id)arg2 ;
+(void)logLoginWithMethod:(id)arg0 success:(id)arg1 customAttributes:(id)arg2 ;
+(void)logShareWithMethod:(id)arg0 contentName:(id)arg1 contentType:(id)arg2 contentId:(id)arg3 customAttributes:(id)arg4 ;
+(void)logPurchaseWithPrice:(id)arg0 currency:(id)arg1 success:(id)arg2 itemName:(id)arg3 itemType:(id)arg4 itemId:(id)arg5 customAttributes:(id)arg6 ;
+(void)logLevelStart:(id)arg0 customAttributes:(id)arg1 ;
+(void)logLevelEnd:(id)arg0 score:(id)arg1 success:(id)arg2 customAttributes:(id)arg3 ;
+(void)logAddToCartWithPrice:(id)arg0 currency:(id)arg1 itemName:(id)arg2 itemType:(id)arg3 itemId:(id)arg4 customAttributes:(id)arg5 ;
+(void)logStartCheckoutWithPrice:(id)arg0 currency:(id)arg1 itemCount:(id)arg2 customAttributes:(id)arg3 ;
+(void)logRating:(id)arg0 contentName:(id)arg1 contentType:(id)arg2 contentId:(id)arg3 customAttributes:(id)arg4 ;
+(void)logContentViewWithName:(id)arg0 contentType:(id)arg1 contentId:(id)arg2 customAttributes:(id)arg3 ;
+(void)logSearchWithQuery:(id)arg0 customAttributes:(id)arg1 ;
+(void)logCustomEventWithName:(id)arg0 customAttributes:(id)arg1 ;
+(void)printMethodUnavailableWithSelector:(id)arg0 ;
+(id)bundleIdentifier;
+(id)kitDisplayVersion;
+(id)kitBuildVersion;
+(void)initializeIfNeeded;


@end


#endif