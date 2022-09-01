// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLEPLAYOPTIONSPROVIDER_H
#define VUNGLEPLAYOPTIONSPROVIDER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol NSCopying;

@interface VunglePlayOptionsProvider : NSObject <NSCopying>



@property (copy, nonatomic) NSString *incentivizedAlertTitle; // ivar: _incentivizedAlertTitle
@property (copy, nonatomic) NSString *incentivizedAlertBody; // ivar: _incentivizedAlertBody
@property (copy, nonatomic) NSString *incentivizedAlertCloseButtonLabel; // ivar: _incentivizedAlertCloseButtonLabel
@property (copy, nonatomic) NSString *incentivizedAlertContinueButtonLabel; // ivar: _incentivizedAlertContinueButtonLabel
@property (nonatomic) NSUInteger supportedOrientations; // ivar: _supportedOrientations
@property (copy, nonatomic) NSString *user; // ivar: _user
@property (copy, nonatomic) NSDictionary *extraInformation; // ivar: _extraInformation
@property (nonatomic) NSUInteger ordinalView; // ivar: _ordinalView
@property (nonatomic) CGFloat flexAutoCloseTime; // ivar: _flexAutoCloseTime
@property (readonly, copy, nonatomic) NSString *placement; // ivar: _placement
@property (nonatomic) BOOL startMuted; // ivar: _startMuted


-(id)initWithPlayOptionsDictionary:(id)arg0 error:(*id)arg1 ;
// -(id)incentivizedAlertControllerWithOKBlock:(id)arg0 cancelBlock:(unk)arg1  ;
-(id)customIncentivizedTexts;
-(BOOL)validatePlayOptionsDictionary:(id)arg0 error:(*id)arg1 ;
-(BOOL)validateExtraInfoDictionary:(id)arg0 error:(*id)arg1 ;
-(void)assignPropertiesWithPlayOptions:(id)arg0 ;
-(id)copyWithZone:(struct _NSZone *)arg0 ;


@end


#endif