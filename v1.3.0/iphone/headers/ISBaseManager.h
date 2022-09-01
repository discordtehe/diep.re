// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISBASEMANAGER_H
#define ISBASEMANAGER_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class ISPlacementsRepository;
@class ISPlacement;
@class ISBaseSMASH;

@interface ISBaseManager : NSObject

@property (readonly, nonatomic) NSMutableArray *smashList; // ivar: _smashList
@property (nonatomic) NSInteger netStatus; // ivar: _netStatus
@property (retain, nonatomic) NSObject<OS_dispatch_queue> *adaptersQueue; // ivar: _adaptersQueue
@property (retain, nonatomic) NSBlockOperation *statusReportOpeartion; // ivar: _statusReportOpeartion
@property (retain, nonatomic) ISPlacementsRepository *placementsRepository; // ivar: _placementsRepository
@property (retain, nonatomic) ISPlacement *currentPlacement; // ivar: _currentPlacement
@property (retain, nonatomic) ISBaseSMASH *backfill; // ivar: _backfill
@property (retain, nonatomic) ISBaseSMASH *premium; // ivar: _premium
@property (retain, nonatomic) NSString *premiumProviderName; // ivar: _premiumProviderName
@property (nonatomic) BOOL canShowPremiumAdapter; // ivar: _canShowPremiumAdapter
@property (nonatomic) BOOL didInitSuccesfully; // ivar: _didInitSuccesfully
@property (nonatomic) NSUInteger maxAdaptersToLoad; // ivar: _maxAdaptersToLoad
@property (readonly, nonatomic) BOOL isDemandOnlyMode; // ivar: _isDemandOnlyMode


-(id)initWithProvidersPool:(id)arg0 settings:(id)arg1 isDemandOnlyMode:(BOOL)arg2 ;
-(id)placementForName:(id)arg0 ;
-(id)cappingMessageForPlacement:(id)arg0 cappingStatus:(NSInteger)arg1 ;
-(BOOL)isBackfill:(id)arg0 ;
-(BOOL)isBackfillAvailable;
-(void)setBackFillSMASHWithProviderName:(id)arg0 ;
-(BOOL)didLoadAdapterForBackfill;
-(BOOL)isPremium:(id)arg0 ;
-(BOOL)isPremiumAvailable;
-(void)disablePremiumForCurrentSession;
-(id)initiateNextSMASH;
-(id)loadAdapter:(id)arg0 ;
-(id)getLoadedAdapter:(id)arg0 ;
-(id)loadAdapterFromReflection:(id)arg0 ;
-(int)numberOfSMASHesInState:(id)arg0 ;
-(NSInteger)smashesCountInState:(NSInteger)arg0 ;
-(id)createBaseDataForEventFromSMASH:(id)arg0 ;
-(void)addObject:(id)arg0 forKey:(id)arg1 toDictionary:(id)arg2 ;
-(void)setConsent:(BOOL)arg0 ;


@end


#endif