// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADTARGETING_H
#define GADTARGETING_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>
#import <UIKit/UIKit.h>

@class GADAdData;
@class GADLocation;
@protocol GADSignalSource;
@protocol GADSignal;

@interface GADTargeting : NSObject <GADSignalSource, GADSignal>

 {
    NSArray *_categoryExclusions;
    NSString *_contentURLString;
    NSDictionary *_customTargeting;
    NSDictionary *_networkExtrasMap;
    NSString *_publisherProvidedID;
    NSDictionary *_additionalRequestSignals;
    NSMutableDictionary *_signalSources;
}


@property (readonly, nonatomic) NSArray *adTypes; // ivar: _adTypes
@property (readonly, nonatomic) NSDictionary *signalSources;
@property (copy, nonatomic) GADAdData *adData; // ivar: _adData
@property (readonly, nonatomic) NSArray *keywords; // ivar: _keywords
@property (readonly, nonatomic) GADLocation *location; // ivar: _location
@property (readonly, nonatomic) NSInteger gender; // ivar: _gender
@property (readonly, nonatomic) NSDate *birthday; // ivar: _birthday
@property (readonly, nonatomic) NSArray *testDeviceIdentifiers; // ivar: _testDeviceIdentifiers
@property (readonly, nonatomic) NSNumber *childDirectedTreatment; // ivar: _childDirectedTreatment
@property (readonly, nonatomic) BOOL testModeEnabled;
@property (readonly, nonatomic) NSString *requestAgent; // ivar: _requestAgent
@property (copy, nonatomic) NSString *requestOrigin; // ivar: _requestOrigin
@property (weak, nonatomic) UIViewController *rootViewController; // ivar: _rootViewController
@property (copy, nonatomic) NSString *userIdentifier; // ivar: _userIdentifier
@property (copy, nonatomic) NSString *customRewardString; // ivar: _customRewardString
@property (nonatomic) GADAdSize adSize; // ivar: _adSize
@property (retain, nonatomic) NSSet *nativeAdTypes; // ivar: _nativeAdTypes
@property (readonly, nonatomic) NSString *adUnitID; // ivar: _adUnitID
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithRequest:(id)arg0 adUnitID:(id)arg1 ;
-(void)setSignalSource:(id)arg0 forKey:(id)arg1 ;
-(id)networkExtrasForAdapterClass:(Class)arg0 ;
-(id)networkExtrasForClass:(Class)arg0 ;
-(void)getSignalUpdateQueue:(*id)arg0 signalCreationBlock:(*id)arg1 ;
-(void)addSignalEntriesToMutableDictionary:(id)arg0 ;


@end


#endif