// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol UIApplicationDelegate

@property (retain, nonatomic) UIWindow *window;


@optional
-(void)applicationDidFinishLaunching:(id)arg0 ;
-(BOOL)application:(id)arg0 willFinishLaunchingWithOptions:(id)arg1 ;
-(BOOL)application:(id)arg0 didFinishLaunchingWithOptions:(id)arg1 ;
-(void)applicationDidBecomeActive:(id)arg0 ;
-(void)applicationWillResignActive:(id)arg0 ;
-(BOOL)application:(id)arg0 handleOpenURL:(id)arg1 ;
-(BOOL)application:(id)arg0 openURL:(id)arg1 sourceApplication:(id)arg2 annotation:(id)arg3 ;
-(BOOL)application:(id)arg0 openURL:(id)arg1 options:(id)arg2 ;
-(void)applicationDidReceiveMemoryWarning:(id)arg0 ;
-(void)applicationWillTerminate:(id)arg0 ;
-(void)applicationSignificantTimeChange:(id)arg0 ;
-(void)application:(id)arg0 willChangeStatusBarOrientation:(NSInteger)arg1 duration:(CGFloat)arg2 ;
-(void)application:(id)arg0 didChangeStatusBarOrientation:(NSInteger)arg1 ;
-(void)application:(id)arg0 willChangeStatusBarFrame:(struct CGRect )arg1 ;
-(void)application:(id)arg0 didChangeStatusBarFrame:(struct CGRect )arg1 ;
-(void)application:(id)arg0 didRegisterUserNotificationSettings:(id)arg1 ;
-(void)application:(id)arg0 didRegisterForRemoteNotificationsWithDeviceToken:(id)arg1 ;
-(void)application:(id)arg0 didFailToRegisterForRemoteNotificationsWithError:(id)arg1 ;
-(void)application:(id)arg0 didReceiveRemoteNotification:(id)arg1 ;
-(void)application:(id)arg0 didReceiveLocalNotification:(id)arg1 ;
-(void)application:(id)arg0 handleActionWithIdentifier:(id)arg1 forLocalNotification:(id)arg2 completionHandler:(id)arg3 ;
-(void)application:(id)arg0 handleActionWithIdentifier:(id)arg1 forRemoteNotification:(id)arg2 withResponseInfo:(id)arg3 completionHandler:(id)arg4 ;
-(void)application:(id)arg0 handleActionWithIdentifier:(id)arg1 forRemoteNotification:(id)arg2 completionHandler:(id)arg3 ;
-(void)application:(id)arg0 handleActionWithIdentifier:(id)arg1 forLocalNotification:(id)arg2 withResponseInfo:(id)arg3 completionHandler:(id)arg4 ;
-(void)application:(id)arg0 didReceiveRemoteNotification:(id)arg1 fetchCompletionHandler:(id)arg2 ;
-(void)application:(id)arg0 performFetchWithCompletionHandler:(id)arg1 ;
-(void)application:(id)arg0 performActionForShortcutItem:(id)arg1 completionHandler:(id)arg2 ;
-(void)application:(id)arg0 handleEventsForBackgroundURLSession:(id)arg1 completionHandler:(id)arg2 ;
-(void)application:(id)arg0 handleWatchKitExtensionRequest:(id)arg1 reply:(id)arg2 ;
-(void)applicationShouldRequestHealthAuthorization:(id)arg0 ;
-(void)application:(id)arg0 handleIntent:(id)arg1 completionHandler:(id)arg2 ;
-(void)applicationDidEnterBackground:(id)arg0 ;
-(void)applicationWillEnterForeground:(id)arg0 ;
-(void)applicationProtectedDataWillBecomeUnavailable:(id)arg0 ;
-(void)applicationProtectedDataDidBecomeAvailable:(id)arg0 ;
-(NSUInteger)application:(id)arg0 supportedInterfaceOrientationsForWindow:(id)arg1 ;
-(BOOL)application:(id)arg0 shouldAllowExtensionPointIdentifier:(id)arg1 ;
-(id)application:(id)arg0 viewControllerWithRestorationIdentifierPath:(id)arg1 coder:(id)arg2 ;
-(BOOL)application:(id)arg0 shouldSaveApplicationState:(id)arg1 ;
-(BOOL)application:(id)arg0 shouldRestoreApplicationState:(id)arg1 ;
-(void)application:(id)arg0 willEncodeRestorableStateWithCoder:(id)arg1 ;
-(void)application:(id)arg0 didDecodeRestorableStateWithCoder:(id)arg1 ;
-(BOOL)application:(id)arg0 willContinueUserActivityWithType:(id)arg1 ;
-(BOOL)application:(id)arg0 continueUserActivity:(id)arg1 restorationHandler:(id)arg2 ;
-(void)application:(id)arg0 didFailToContinueUserActivityWithType:(id)arg1 error:(id)arg2 ;
-(void)application:(id)arg0 didUpdateUserActivity:(id)arg1 ;
-(void)application:(id)arg0 userDidAcceptCloudKitShareWithMetadata:(id)arg1 ;
-(id)window;
-(void)setWindow:(id)arg0 ;
@end

