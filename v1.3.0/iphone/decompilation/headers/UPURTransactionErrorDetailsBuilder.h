// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef UPURTRANSACTIONERRORDETAILSBUILDER_H
#define UPURTRANSACTIONERRORDETAILSBUILDER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface UPURTransactionErrorDetailsBuilder : NSObject

@property (nonatomic) NSInteger transactionError; // ivar: _transactionError
@property (retain, nonatomic) NSString *exceptionMessage; // ivar: _exceptionMessage
@property (nonatomic) NSInteger store; // ivar: _store
@property (retain, nonatomic) NSString *storeSpecificErrorCode; // ivar: _storeSpecificErrorCode
@property (retain, nonatomic) NSMutableDictionary *extras; // ivar: _extras


-(id)init;
-(void)putExtra:(id)arg0 value:(id)arg1 ;


@end


#endif