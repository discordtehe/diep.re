// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TJSYSTEMPLACEMENT_H
#define TJSYSTEMPLACEMENT_H


#import <Foundation/Foundation.h>

@protocol TJPlacementDelegate;

@interface TJSystemPlacement : NSObject <TJPlacementDelegate>



@property (retain, nonatomic) NSString *placementName; // ivar: _placementName
@property (retain, nonatomic) NSString *pushId; // ivar: _pushId
@property (nonatomic) BOOL systemFlag; // ivar: _systemFlag
@property (nonatomic) NSInteger priority; // ivar: _priority
@property (nonatomic) CGFloat requestStartTime; // ivar: _requestStartTime
@property (nonatomic) CGFloat timeout; // ivar: _timeout
@property (nonatomic) BOOL cancelled; // ivar: _cancelled
@property (retain, nonatomic) NSString *placementType; // ivar: _placementType
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)endWithReason:(id)arg0 ;
-(id)initWithPlacementName:(id)arg0 priority:(NSInteger)arg1 pushId:(id)arg2 systemFlag:(BOOL)arg3 ;
-(void)show;
-(void)dealloc;
-(void)cancel;
-(BOOL)timedOut;
-(void)requestPlacementContent;
-(void)waitForConnectSuccess;
-(void)onConnectSuccess:(id)arg0 ;
-(void)onConnectFailure:(id)arg0 ;
-(void)requestDidSucceed:(id)arg0 ;
-(void)requestDidFail:(id)arg0 error:(id)arg1 ;
-(void)contentIsReady:(id)arg0 ;
-(void)showContent:(id)arg0 ;
-(void)trackTimedOutContentRequested:(BOOL)arg0 contentReady:(BOOL)arg1 ;
+(void)showPushContent:(id)arg0 withId:(id)arg1 ;
+(void)showAppLaunchContent;
+(void)showInsufficientCurrencyContent;
+(void)end:(id)arg0 ;
+(void)setDefaultPlacementsExclude:(id)arg0 ;


@end


#endif