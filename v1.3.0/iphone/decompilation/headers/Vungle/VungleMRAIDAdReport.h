// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLEMRAIDADREPORT_H
#define VUNGLEMRAIDADREPORT_H


#import <CoreFoundation/CoreFoundation.h>
#import <Foundation/Foundation.h>

@class VungleAdReport;
@protocol VungleReportable;
@protocol VNGPersistable;

@interface VungleMRAIDAdReport : VungleAdReport <VungleReportable, VNGPersistable>



@property (retain, nonatomic) NSMutableArray *privateUserActions; // ivar: _privateUserActions
@property (retain, nonatomic) NSMutableArray *privateClickthrough; // ivar: _privateClickthrough
@property (retain, nonatomic) NSMutableArray *privateErrors; // ivar: _privateErrors
@property (readonly, nonatomic) NSArray *userActions;
@property (readonly, nonatomic) NSArray *clickthrough;
@property (readonly, nonatomic) NSArray *errors;
@property (nonatomic) BOOL internalIncentivized; // ivar: _internalIncentivized
@property (copy, nonatomic) NSString *templateID; // ivar: _templateID
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(void)appendUserAction:(id)arg0 timeStamp:(NSUInteger)arg1 ;
-(void)appendUserAction:(id)arg0 ;
-(void)appendUserAction:(id)arg0 withValue:(id)arg1 ;
-(void)appendUserAction:(id)arg0 withValue:(id)arg1 timeStamp:(NSUInteger)arg2 ;
-(void)appendClickthrough:(id)arg0 ;
-(void)appendVungleMRAIDErrorCode:(id)arg0 ;
-(id)toDictionary;
-(id)uniqueIdentifier;
-(void)setPlacementInformation:(id)arg0 ;
-(BOOL)isAdExperienceSuccessful;
-(NSUInteger)duration;
-(void)setDeviceInformation:(id)arg0 ;
-(void)setExtraInformation:(id)arg0 ;
-(void)setPublisherInformation:(id)arg0 ;
-(void)setPlacement:(id)arg0 ;
-(id)placement;
-(BOOL)incentivized;
-(id)initWithCoder:(id)arg0 ;
-(void)encodeWithCoder:(id)arg0 ;


@end


#endif