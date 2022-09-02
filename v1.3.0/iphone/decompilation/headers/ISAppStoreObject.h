// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISAPPSTOREOBJECT_H
#define ISAPPSTOREOBJECT_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class ISAppStoreViewController;

@interface ISAppStoreObject : NSObject

@property (readonly, copy) NSString *viewUniqueId; // ivar: _viewUniqueId
@property (readonly, copy) NSMutableDictionary *appStorePageParams; // ivar: _appStorePageParams
@property (retain, nonatomic) ISAppStoreViewController *appStoreViewController; // ivar: _appStoreViewController
@property (nonatomic) BOOL showStoreWhenDoneLoading; // ivar: _showStoreWhenDoneLoading
@property (nonatomic) BOOL hasAppStorePage; // ivar: _hasAppStorePage
@property (nonatomic, getter=isLoadingStoreInProgress) BOOL loadingStoreInProgress; // ivar: _loadingStoreInProgress
@property (nonatomic) BOOL shouldCancelLoading; // ivar: _shouldCancelLoading
@property (retain, nonatomic) NSTimer *loadingTimer; // ivar: _loadingTimer


-(id)initWithAppStorePageParams:(id)arg0 appStoreViewController:(id)arg1 showStoreWhenDoneLoading:(BOOL)arg2 forViewUniqueId:(id)arg3 ;
-(void)setTimerForTimeoutTask;
-(void)executeTimeoutTasks;
-(void)cleanup;
-(id)appStorePageAppId;
+(id)appStoreObjectWithViewId:(id)arg0 appId:(id)arg1 ;


@end


#endif