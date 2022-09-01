// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLELEGACYADREPORT_H
#define VUNGLELEGACYADREPORT_H


#import <CoreFoundation/CoreFoundation.h>
#import <Foundation/Foundation.h>

@class VungleAdReport;
@protocol VungleReportable;

@interface VungleLegacyAdReport : VungleAdReport <VungleReportable>



@property (retain, nonatomic) NSMutableArray *clickSequence; // ivar: _clickSequence
@property (retain, nonatomic) NSDictionary *playInfo; // ivar: _playInfo
@property (retain, nonatomic) NSMutableOrderedSet *userActions; // ivar: _userActions
@property (nonatomic) BOOL internalIncentivized; // ivar: _internalIncentivized
@property (copy, nonatomic) NSString *url; // ivar: _url
@property (nonatomic) BOOL didTapCTAButton; // ivar: _didTapCTAButton
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithPlacement:(id)arg0 ;
-(void)updatePlayInfoWith:(id)arg0 ;
-(void)updateUserActionsWith:(id)arg0 ;
-(void)addClickSequence:(id)arg0 ;
-(BOOL)incentivized;
-(NSUInteger)duration;
-(BOOL)isAdExperienceSuccessful;
-(id)toDictionary;
-(id)uniqueIdentifier;
-(void)setDeviceInformation:(id)arg0 ;
-(void)setPlacement:(id)arg0 ;
-(void)setExtraInformation:(id)arg0 ;
-(void)setPublisherInformation:(id)arg0 ;
-(id)placement;
-(void)encodeWithCoder:(id)arg0 ;
-(id)initWithCoder:(id)arg0 ;


@end


#endif