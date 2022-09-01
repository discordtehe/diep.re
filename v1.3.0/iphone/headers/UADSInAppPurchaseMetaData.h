// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef UADSINAPPPURCHASEMETADATA_H
#define UADSINAPPPURCHASEMETADATA_H



@class UADSMetaData;

@interface UADSInAppPurchaseMetaData : UADSMetaData



-(id)init;
-(void)setProductId:(id)arg0 ;
-(void)setPrice:(id)arg0 ;
-(void)setCurrency:(id)arg0 ;
-(void)setReceiptPurchaseData:(id)arg0 ;
-(void)setSignature:(id)arg0 ;
-(void)commit;
-(BOOL)set:(id)arg0 value:(id)arg1 ;


@end


#endif