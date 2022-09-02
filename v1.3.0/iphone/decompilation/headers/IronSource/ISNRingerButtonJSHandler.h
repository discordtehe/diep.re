// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISNRINGERBUTTONJSHANDLER_H
#define ISNRINGERBUTTONJSHANDLER_H


#import <Foundation/Foundation.h>

@class SupersonicAdsPublisher;
@class ISNRingerCheckerController;
@protocol ISNJSInterfaceHandlerP;

@interface ISNRingerButtonJSHandler : NSObject <ISNJSInterfaceHandlerP>



@property (readonly, weak, nonatomic) SupersonicAdsPublisher *publisherAgent; // ivar: _publisherAgent
@property (retain, nonatomic) ISNRingerCheckerController *ringerCheckerController; // ivar: _ringerCheckerController
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithPublisherAgent:(id)arg0 ;
-(void)invokeAPIWithJSParams:(id)arg0 ;
-(void)handlePrepareRingerChecker:(id)arg0 ;
-(void)handleStartRingerStatus:(id)arg0 ;
-(void)handleStopRingerCheckerStatus:(id)arg0 ;
-(void)prepareDetectorController;
-(void)createNativeAssetsDirectory;
-(void)upadateOnStatusChanged:(BOOL)arg0 ;
-(id)methodNameFromParams:(id)arg0 ;
-(id)methodParamsFromJSParams:(id)arg0 ;
-(void)sendEmptyCallbackToController:(id)arg0 ;
-(void)sendCallbackToController:(id)arg0 withParams:(id)arg1 ;


@end


#endif