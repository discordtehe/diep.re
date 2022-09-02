// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GULAPPDELEGATESWIZZLER_H
#define GULAPPDELEGATESWIZZLER_H


#import <Foundation/Foundation.h>


@interface GULAppDelegateSwizzler : NSProxy



-(id)fakeDescription;
-(BOOL)application:(id)arg0 openURL:(id)arg1 options:(id)arg2 ;
-(BOOL)application:(id)arg0 openURL:(id)arg1 sourceApplication:(id)arg2 annotation:(id)arg3 ;
-(void)application:(id)arg0 handleEventsForBackgroundURLSession:(id)arg1 completionHandler:(id)arg2 ;
-(BOOL)application:(id)arg0 continueUserActivity:(id)arg1 restorationHandler:(id)arg2 ;
+(BOOL)isAppDelegateProxyEnabled;
+(id)registerAppDelegateInterceptor:(id)arg0 ;
+(void)unregisterAppDelegateInterceptorWithID:(id)arg0 ;
+(void)proxyOriginalDelegate;
+(id)sharedApplication;
+(void)createSubclassWithObject:(id)arg0 ;
+(id)interceptors;
+(void)addInstanceMethodWithSelector:(SEL)arg0 fromClass:(Class)arg1 toClass:(Class)arg2 ;
+(void)addInstanceMethodWithDestinationSelector:(SEL)arg0 withImplementationFromSourceSelector:(SEL)arg1 fromClass:(Class)arg2 toClass:(Class)arg3 ;
+(*unk)implementationOfMethodSelector:(SEL)arg0 fromClass:(Class)arg1 ;
+(void)notifyInterceptorsWithMethodSelector:(SEL)arg0 callback:(id)arg1 ;
+(void)proxyAppDelegate:(id)arg0 ;
+(id)correctAppDelegateProxyKey;
+(id)correctAlternativeWhenAppDelegateProxyNotCreated;


@end


#endif