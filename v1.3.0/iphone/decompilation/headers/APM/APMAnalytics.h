// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef APMANALYTICS_H
#define APMANALYTICS_H


#import <Foundation/Foundation.h>


@interface APMAnalytics : NSObject



-(void)setInternalUserProperty:(id)arg0 forName:(id)arg1 withOrigin:(id)arg2 ;
-(void)maxUserPropertiesForOrigin:(id)arg0 queue:(id)arg1 callback:(id)arg2 ;
-(void)logInternalEventWithOrigin:(id)arg0 name:(id)arg1 parameters:(id)arg2 ;
-(void)paymentQueue:(id)arg0 updatedTransactions:(id)arg1 ;
-(void)dealloc;
+(void)load;
+(void)initialize;
+(id)sharedInstance;
+(void)startWithAppID:(id)arg0 origin:(id)arg1 options:(id)arg2 ;
+(void)resetAnalyticsData;
+(void)dispatchAsyncOnSerialQueue:(id)arg0 ;
+(void)queueOperationWithBlock:(id)arg0 ;
+(void)unsuspendOperationQueue;
+(BOOL)isCurrentQueueSerialQueue;
+(void)setAnalyticsEnabled:(BOOL)arg0 ;
+(void)setScreenName:(id)arg0 screenClass:(id)arg1 ;
+(id)appInstanceID;
+(CGFloat)loadTimestamp;
+(void)observeNotificationsForAnalyticsConfiguration:(id)arg0 ;
+(void)handleSetEnabled:(id)arg0 ;
+(void)handleSetMinimumSessionInterval:(id)arg0 ;
+(void)handleSetSessionTimeoutInterval:(id)arg0 ;
+(void)handleEventsForBackgroundURLSession:(id)arg0 completionHandler:(id)arg1 ;
+(void)logEventsOnWorkerQueue:(id)arg0 notifyEventListeners:(BOOL)arg1 ;
+(void)logEventWithName:(id)arg0 parameters:(id)arg1 ;
+(void)logEventWithOrigin:(id)arg0 name:(id)arg1 parameters:(id)arg2 ;
+(void)logInternalEventWithOrigin:(id)arg0 name:(id)arg1 parameters:(id)arg2 ;
+(void)logEventWithOrigin:(id)arg0 isPublicEvent:(BOOL)arg1 name:(id)arg2 parameters:(id)arg3 ;
+(void)logEventWithOrigin:(id)arg0 isPublicEvent:(BOOL)arg1 name:(id)arg2 parameters:(id)arg3 timestamp:(CGFloat)arg4 ignoreEnabled:(BOOL)arg5 ignoreInterceptor:(BOOL)arg6 ;
+(void)logEventOnSerialQueueWithOrigin:(id)arg0 isPublicEvent:(BOOL)arg1 name:(id)arg2 parameters:(id)arg3 timestamp:(CGFloat)arg4 ignoreEnabled:(BOOL)arg5 ignoreInterceptor:(BOOL)arg6 addedScreenParameters:(id)arg7 ;
+(id)eventsToLogWithEventID:(NSInteger)arg0 origin:(id)arg1 isPublic:(BOOL)arg2 name:(id)arg3 timestamp:(CGFloat)arg4 parameters:(id)arg5 ;
+(void)createAppDelegateProxy;
+(void)handleOpenURL:(id)arg0 ;
+(void)handleUserActivity:(id)arg0 ;
+(void)setOpenURLListener:(id)arg0 ;
+(void)setUserPropertyString:(id)arg0 forName:(id)arg1 ;
+(void)setUserID:(id)arg0 ;
+(void)removeUserAttributeForName:(id)arg0 ;
+(void)setUserAttributeNumber:(id)arg0 forName:(id)arg1 ;
+(void)setInternalUserProperty:(id)arg0 forName:(id)arg1 ;
+(void)removeInternalUserAttributeForName:(id)arg0 ;
+(void)userPropertiesIncludingInternal:(BOOL)arg0 queue:(id)arg1 callback:(id)arg2 ;
+(void)setLogEventInterceptor:(id)arg0 ;
+(id)addLogEventListener:(id)arg0 ;
+(void)removeLogEventListener:(id)arg0 ;
+(void)notifyEventListeners:(id)arg0 ;
+(void)notifyEventListenersOnSerialQueue:(id)arg0 ;
+(void)maybeEnableTagManager;
+(void)paymentQueue:(id)arg0 updatedTransactions:(id)arg1 ;


@end


#endif