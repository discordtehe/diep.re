// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef APPDELEGATE_H
#define APPDELEGATE_H


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class CCDirectorIOS;
@protocol UIApplicationDelegate;
@protocol CCDirectorDelegate;
@protocol ccResourcePackProtocol;
@protocol ccDeviceCategoryProtocol;

@interface AppDelegate : NSObject <UIApplicationDelegate, CCDirectorDelegate, ccResourcePackProtocol, ccDeviceCategoryProtocol>

 {
    int mInterstitialBackgroundMinGames;
}


@property (retain, nonatomic) UIWindow *window; // ivar: window_
@property (readonly) UINavigationController *navController; // ivar: navController_
@property (readonly) CCDirectorIOS *director; // ivar: director_
@property (readonly, nonatomic) unsigned int numBecameActive; // ivar: mNumBecameActive
@property (readonly, nonatomic) unsigned int interstitialBackgroundMinGames; // ivar: _interstitialBackgroundMinGames
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)getResourcePacksInfo;
-(id)getDesiredPack;
-(id)getDeviceCategoryConfig;
-(id)getDeviceCategory;
-(BOOL)application:(id)arg0 didFinishLaunchingWithOptions:(id)arg1 ;
-(NSUInteger)application:(id)arg0 supportedInterfaceOrientationsForWindow:(id)arg1 ;
-(NSUInteger)supportedInterfaceOrientations;
-(BOOL)shouldAutorotateToInterfaceOrientation:(NSInteger)arg0 ;
-(void)applicationWillResignActive:(id)arg0 ;
-(void)resumeDirector;
-(void)applicationDidBecomeActive:(id)arg0 ;
-(void)applicationDidReceiveMemoryWarning:(id)arg0 ;
-(void)applicationDidEnterBackground:(id)arg0 ;
-(void)applicationWillEnterForeground:(id)arg0 ;
-(void)applicationWillTerminate:(id)arg0 ;
-(void)applicationSignificantTimeChange:(id)arg0 ;
-(void)dealloc;
-(BOOL)application:(id)arg0 handleOpenURL:(id)arg1 ;
-(BOOL)application:(id)arg0 openURL:(id)arg1 sourceApplication:(id)arg2 annotation:(id)arg3 ;
-(void)application:(id)arg0 didRegisterUserNotificationSettings:(id)arg1 ;
-(void)application:(id)arg0 didReceiveLocalNotification:(id)arg1 ;


@end


#endif