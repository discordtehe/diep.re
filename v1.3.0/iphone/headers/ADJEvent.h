// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADJEVENT_H
#define ADJEVENT_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol NSCopying;
@protocol ADJLogger;

@interface ADJEvent : NSObject <NSCopying>



@property (weak, nonatomic) NSObject<ADJLogger> *logger; // ivar: _logger
@property (retain, nonatomic) NSMutableDictionary *callbackMutableParameters; // ivar: _callbackMutableParameters
@property (retain, nonatomic) NSMutableDictionary *partnerMutableParameters; // ivar: _partnerMutableParameters
@property (readonly, copy, nonatomic) NSNumber *revenue; // ivar: _revenue
@property (readonly, copy, nonatomic) NSString *eventToken; // ivar: _eventToken
@property (readonly, copy, nonatomic) NSString *transactionId; // ivar: _transactionId
@property (readonly, copy, nonatomic) NSString *currency; // ivar: _currency
@property (readonly, copy, nonatomic) NSData *receipt; // ivar: _receipt
@property (readonly, nonatomic) NSDictionary *partnerParameters;
@property (readonly, nonatomic) NSDictionary *callbackParameters;
@property (readonly, nonatomic) BOOL emptyReceipt; // ivar: _emptyReceipt


-(id)initWithEventToken:(id)arg0 ;
-(void)addCallbackParameter:(id)arg0 value:(id)arg1 ;
-(void)addPartnerParameter:(id)arg0 value:(id)arg1 ;
-(BOOL)checkEventToken:(id)arg0 ;
-(BOOL)checkRevenue:(id)arg0 currency:(id)arg1 ;
-(BOOL)isValid;
-(BOOL)checkReceipt:(id)arg0 transactionId:(id)arg1 ;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
+(id)eventWithEventToken:(id)arg0 ;


@end


#endif