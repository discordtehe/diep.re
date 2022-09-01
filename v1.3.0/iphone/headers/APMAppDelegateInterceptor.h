// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef APMAPPDELEGATEINTERCEPTOR_H
#define APMAPPDELEGATEINTERCEPTOR_H


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol UIApplicationDelegate;

@interface APMAppDelegateInterceptor : NSObject <UIApplicationDelegate>



@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (retain, nonatomic) UIWindow *window;


-(BOOL)application:(id)arg0 openURL:(id)arg1 options:(id)arg2 ;
-(BOOL)application:(id)arg0 openURL:(id)arg1 sourceApplication:(id)arg2 annotation:(id)arg3 ;
-(void)application:(id)arg0 handleEventsForBackgroundURLSession:(id)arg1 completionHandler:(id)arg2 ;
-(BOOL)application:(id)arg0 continueUserActivity:(id)arg1 restorationHandler:(id)arg2 ;
+(id)sharedInstance;


@end


#endif