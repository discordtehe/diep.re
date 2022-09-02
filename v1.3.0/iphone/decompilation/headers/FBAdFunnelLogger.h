// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADFUNNELLOGGER_H
#define FBADFUNNELLOGGER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol FBAdFunnelLoggingDelegate;

@interface FBAdFunnelLogger : NSObject <FBAdFunnelLoggingDelegate>



@property (copy, nonatomic) NSString *token; // ivar: _token
@property (copy, nonatomic) NSSet *eventList; // ivar: _eventList
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithToken:(id)arg0 andEventList:(id)arg1 ;
-(BOOL)shouldLogEventWithSubtype:(id)arg0 ;
-(id)getFunnelLoggingDataWithSubtype:(id)arg0 withExtraData:(id)arg1 ;
-(void)logFunnelWithSubtype:(id)arg0 withData:(id)arg1 ;
-(id)uxFunnelDataWithEventType:(id)arg0 ;
-(id)orientationForSize:(struct CGSize )arg0 ;
-(id)addValue:(id)arg0 withKey:(id)arg1 toDictionary:(id)arg2 ;
-(void)logAdChoicesTappedWithData:(id)arg0 ;
-(void)logBackToAppWithData:(id)arg0 ;
-(void)logDeviceRotationWithData:(id)arg0 newSize:(struct CGSize )arg1 ;
-(void)logLeaveAppWithData:(id)arg0 ;
-(void)logVideoDidFinishWithData:(id)arg0 ;
-(void)logSoundButtonPressedWithData:(id)arg0 ;
-(void)logVideoDidMuteWithData:(id)arg0 ;
-(void)logVideoDidPauseWithData:(id)arg0 ;
-(void)logVideoDidResumeWithData:(id)arg0 ;
-(void)logVideoDidSkipWithData:(id)arg0 ;
-(void)logVideoDidStartPlayingWithData:(id)arg0 ;
-(void)logVideoDidUnMuteWithData:(id)arg0 ;
-(void)logVideoErrorWithData:(id)arg0 error:(id)arg1 ;
-(void)logVideoPlayPauseButtonTappedWithData:(id)arg0 ;
-(void)logAdResponseSuccessful:(id)arg0 ;
-(void)logCTAClickedWithData:(id)arg0 ;
-(void)logAdReportTappedWithData:(id)arg0 ;
-(void)logAdReportWhySeeingThisClickedWithData:(id)arg0 ;
-(void)logAdReportManagePrefsClickedWithData:(id)arg0 ;
-(void)logAdReportedWithData:(id)arg0 userJourney:(id)arg1 ;
-(void)logAdSelectionTimeoutWithData:(id)arg0 ;
-(void)logAdCloseClickedWithData:(id)arg0 ;


@end


#endif