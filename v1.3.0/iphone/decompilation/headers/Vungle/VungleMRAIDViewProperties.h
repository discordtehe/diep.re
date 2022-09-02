// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLEMRAIDVIEWPROPERTIES_H
#define VUNGLEMRAIDVIEWPROPERTIES_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface VungleMRAIDViewProperties : NSObject

@property (retain, nonatomic) NSDictionary *privateMaxSize; // ivar: _privateMaxSize
@property (retain, nonatomic) NSDictionary *privateScreenSize; // ivar: _privateScreenSize
@property (retain, nonatomic) NSDictionary *privateDefaultPosition; // ivar: _privateDefaultPosition
@property (retain, nonatomic) NSDictionary *privateCurrentPosition; // ivar: _privateCurrentPosition
@property (retain, nonatomic) NSDictionary *privateSupports; // ivar: _privateSupports
@property (retain, nonatomic) NSString *privateState; // ivar: _privateState
@property (retain, nonatomic) NSString *privatePlacementType; // ivar: _privatePlacementType
@property (retain, nonatomic) NSNumber *privateIsViewable; // ivar: _privateIsViewable
@property (retain, nonatomic) NSNumber *privateOsVersion; // ivar: _privateOsVersion
@property (retain, nonatomic) NSNumber *privateStartMuted; // ivar: _privateStartMuted
@property (retain, nonatomic) NSNumber *privateIsIncentivized; // ivar: _privateIsIncentivized
@property (retain, nonatomic) NSNumber *privateIsConsentRequired; // ivar: _privateIsConsentRequired
@property (retain, nonatomic) NSNumber *privateEnableBackImmediately; // ivar: _privateEnableBackImmediately
@property (retain, nonatomic) NSString *privateOSVersion; // ivar: _privateOSVersion
@property (retain, nonatomic) NSString *privateOS; // ivar: _privateOS
@property (retain, nonatomic) NSString *privateVersion; // ivar: _privateVersion
@property (retain, nonatomic) NSString *privateConsentTitleText; // ivar: _privateConsentTitleText
@property (retain, nonatomic) NSString *privateConsentBodyText; // ivar: _privateConsentBodyText
@property (retain, nonatomic) NSString *privateConsentAcceptButtonText; // ivar: _privateConsentAcceptButtonText
@property (retain, nonatomic) NSString *privateConsentDenyButtonText; // ivar: _privateConsentDenyButtonText
@property (retain, nonatomic) NSDictionary *privateExpandProperties; // ivar: _privateExpandProperties
@property (retain, nonatomic) NSDictionary *privateResizeProperties; // ivar: _privateResizeProperties
@property (retain, nonatomic) NSDictionary *privateOrientationProperties; // ivar: _privateOrientationProperties


-(id)initWithOSVersion:(id)arg0 ;
-(id)toDictionary;
-(void)setMaxSize:(struct CGSize )arg0 ;
-(void)setScreenSize:(struct CGSize )arg0 ;
-(void)setDefaultPosition:(struct CGRect )arg0 ;
-(void)setCurrentPosition:(struct CGRect )arg0 ;
-(void)setSupports;
-(void)setState:(id)arg0 ;
-(void)setPlacementType:(id)arg0 ;
-(void)setIsViewable:(BOOL)arg0 ;
-(void)setStartMuted:(BOOL)arg0 ;
-(void)setIsIncentivized:(BOOL)arg0 ;
-(void)setIsConsentRequired:(BOOL)arg0 ;
-(void)setConsentMessageTitle:(id)arg0 ;
-(void)setConsentMessageBody:(id)arg0 ;
-(void)setConsentMessageAcceptButton:(id)arg0 ;
-(void)setConsentMessageDenyButton:(id)arg0 ;
-(void)setEnableBackImmediately:(BOOL)arg0 ;
-(void)setVersion:(id)arg0 ;
-(void)setDimensionsWithSize:(struct CGSize )arg0 ;
-(id)getOSVersion;


@end


#endif