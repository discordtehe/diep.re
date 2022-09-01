// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol MCPromoOfferDelegate


-(void)activateStoreChanges:(id)arg0 forOffer:(id)arg1 ;
-(void)deactivateStoreChanges:(id)arg0 forOffer:(id)arg1 ;
-(void)showOfferPopUp:(id)arg0 prioritize:(BOOL)arg1 ;
-(void)hideOfferPopUp:(id)arg0 ;
-(void)offerActivated:(id)arg0 ;
-(void)offerDeactivated:(id)arg0 ;

@optional
-(void)offerKilled:(id)arg0 ;
-(void)offerReset:(id)arg0 ;
@end

