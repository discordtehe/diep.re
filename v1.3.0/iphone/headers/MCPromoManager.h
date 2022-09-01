// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCPROMOMANAGER_H
#define MCPROMOMANAGER_H

@protocol MCPromoSystemDelegate, MCPromoSystemClientDelegate;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class MCPromoSystemNotificationCenter;
@class MCLocalizationManager;

@interface MCPromoManager : NSObject {
    NSMutableDictionary *_promoClients;
    NSMutableDictionary *_promoConfigFiles;
    NSString *_userId;
    MCPromoSystemNotificationCenter *_promoNotificationCenter;
    id<MCPromoSystemDelegate> *_systemDelegate;
    NSDictionary *_cycleConfig;
    NSMutableDictionary *_cycleOverrides;
    NSMutableDictionary *_cycleSaveData;
}


@property (retain, nonatomic) NSString *encryptPassword; // ivar: _encryptPassword
@property (retain, nonatomic) NSObject<MCPromoSystemClientDelegate> *clientDelegate; // ivar: _clientDelegate
@property (readonly, retain, nonatomic) MCLocalizationManager *localizationManager; // ivar: _localizationManager


-(id)initWithPromoClientDelegate:(id)arg0 withPromoSystemDelegate:(id)arg1 ;
-(void)storeSystemsData;
-(void)setupPromoClientDelegate:(id)arg0 andPromoSystemDelegate:(id)arg1 ;
-(void)dealloc;
-(void)setupUser:(id)arg0 ;
-(BOOL)setupPromoClientWithConfigFile:(id)arg0 withSystemId:(id)arg1 ;
-(void)setCurrentTimestamp:(CGFloat)arg0 ;
-(void)reloadSystems;
-(BOOL)reloadSystem:(id)arg0 ;
-(void)resetSystems;
-(void)saveSystemsData;
-(void)processLocalNotificationUserInfo:(id)arg0 ;
-(void)treatConfigData:(id)arg0 forType:(id)arg1 withInfo:(id)arg2 withDefaultGroup:(id)arg3 ;
-(void)treatABTestData:(id)arg0 withDefaultGroup:(id)arg1 ;
-(void)treatCMSData:(id)arg0 withDefaultGroup:(id)arg1 ;
-(id)getAllRegisteredClients;
-(id)getClientForSystem:(id)arg0 ;
-(BOOL)isProductActivated:(id)arg0 ;
-(BOOL)isProductDeactivated:(id)arg0 ;
-(id)getProductReplacement:(id)arg0 ;
-(id)getReplacedProduct:(id)arg0 ;
-(id)getAllShowablePopupsForSystem:(id)arg0 ;
-(id)getNextShowablePopupForSystem:(id)arg0 ;
-(id)getNextShowableBadgeForSystem:(id)arg0 ;
-(id)getAllActivePromoTokens;
-(id)getActivePromoTokensForSystem:(id)arg0 ;
-(id)getTokenForOffer:(id)arg0 inSystem:(id)arg1 ;
-(id)getCustomDataForOffer:(id)arg0 inSystem:(id)arg1 ;
-(id)getBadgePriorityForOffer:(id)arg0 inSystem:(id)arg1 ;
-(id)getSystemIdContainingPromoId:(id)arg0 ;
-(void)handleCycleWithConfig:(id)arg0 forSystem:(id)arg1 ;
-(void)initCycle:(id)arg0 forSystem:(id)arg1 ;
-(id)getCycleOverrideForOffer:(id)arg0 inCycle:(id)arg1 inSystem:(id)arg2 ;
-(void)bumpCycle:(id)arg0 forSystem:(id)arg1 ;
-(void)loadCycleDataForSystem:(id)arg0 ;
-(void)storeCycleDataForSystem:(id)arg0 ;
-(void)clearStoredCycleDataForSystem:(id)arg0 ;
-(void)reloadCycleOverridesForCycle:(id)arg0 forSystem:(id)arg1 ;
-(void)addExtraButton:(id)arg0 toDictionary:(id)arg1 atPosition:(id)arg2 withPriority:(id)arg3 ;
-(void)setCycleExtraButtonPositions:(id)arg0 inDictionary:(id)arg1 forSystem:(id)arg2 ;
-(id)getEntryPointForOffer:(id)arg0 inSystem:(id)arg1 ;
-(void)setNormalExtraButtonPositions:(id)arg0 inDictionary:(id)arg1 forSystem:(id)arg2 ;
-(id)getOrderedExtraButtons:(id)arg0 ;
+(id)mcPromoManagerWithPromoClientDelegate:(id)arg0 withPromoSystemDelegate:(id)arg1 ;


@end


#endif