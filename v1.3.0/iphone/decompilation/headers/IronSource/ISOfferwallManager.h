// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISOFFERWALLMANAGER_H
#define ISOFFERWALLMANAGER_H

@protocol ISOfferwallDelegate;

#import <Foundation/Foundation.h>

@class ISAdapterConfig;
@class ISOfferwallProductSettings;
@class ISPlacementsRepository;
@class ISPlacement;
@class ISBaseAdapter;
@protocol ISOfferwallAdapterDelegate;

@interface ISOfferwallManager : NSObject <ISOfferwallAdapterDelegate>



@property (retain, nonatomic) ISAdapterConfig *config; // ivar: _config
@property (retain, nonatomic) ISOfferwallProductSettings *owSettings; // ivar: _owSettings
@property (retain, nonatomic) ISPlacementsRepository *placementsRepository; // ivar: _placementsRepository
@property (retain, nonatomic) ISPlacement *currentPlacement; // ivar: _currentPlacement
@property (retain, nonatomic) ISBaseAdapter *adapter; // ivar: _adapter
@property (retain, nonatomic) NSObject<ISOfferwallDelegate> *delegate; // ivar: _delegate
@property (nonatomic) BOOL didInitSuccesfully; // ivar: _didInitSuccesfully
@property (nonatomic) BOOL hasOfferwall; // ivar: _hasOfferwall
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithConfig:(id)arg0 settings:(id)arg1 ;
-(void)initOWWithUserId:(id)arg0 ;
-(void)showOfferwallWithViewController:(id)arg0 ;
-(void)showOfferwallWithViewController:(id)arg0 placement:(id)arg1 ;
-(void)getOfferWallCreditsWithUserId:(id)arg0 ;
-(void)adapterOfferwallHasChangedAvailability:(BOOL)arg0 ;
-(void)adapterOfferwallDidFailToShowWithError:(id)arg0 ;
-(BOOL)adapterOfferwallDidReceiveCredits:(id)arg0 ;
-(void)adapterOfferwallDidFailToReceiveCreditsWithError:(id)arg0 ;
-(void)initiateOWAdapter;
-(void)addObject:(id)arg0 forKey:(id)arg1 toDictionary:(id)arg2 ;
-(void)setConsent:(BOOL)arg0 ;


@end


#endif