// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef UPURTRANSACTIONERRORDETAILS_H
#define UPURTRANSACTIONERRORDETAILS_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface UPURTransactionErrorDetails : NSObject

@property (nonatomic) NSInteger transactionError; // ivar: _transactionError
@property (retain, nonatomic) NSString *exceptionMessage; // ivar: _exceptionMessage
@property (nonatomic) NSInteger store; // ivar: _store
@property (retain, nonatomic) NSString *storeSpecificErrorCode; // ivar: _storeSpecificErrorCode
@property (retain, nonatomic) NSDictionary *extras; // ivar: _extras


-(id)getJSONDictionary;
-(id)initWithBuilder:(id)arg0 ;
+(id)build:(id)arg0 ;


@end


#endif