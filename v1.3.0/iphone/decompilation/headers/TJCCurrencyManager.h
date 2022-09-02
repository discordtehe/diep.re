// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TJCCURRENCYMANAGER_H
#define TJCCURRENCYMANAGER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class TJCCurrencyModel;

@interface TJCCurrencyManager : NSObject

@property (retain, nonatomic) NSArray *URLArray; // ivar: _URLArray
@property (retain, nonatomic) TJCCurrencyModel *currencyModelObj; // ivar: _currencyModelObj


-(id)init;
-(void)startRequestWithType:(int)arg0 parameters:(id)arg1 completion:(id)arg2 ;
-(void)getCurrencyBalance;
-(void)getCurrencyWithCompletion:(id)arg0 ;
-(void)spendCurrency:(int)arg0 ;
-(void)spendCurrency:(int)arg0 completion:(id)arg1 ;
-(void)awardCurrency:(int)arg0 ;
-(void)awardCurrency:(int)arg0 completion:(id)arg1 ;
-(void)dealloc;


@end


#endif