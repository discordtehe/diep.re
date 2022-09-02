// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBBDSIGNALERROR_H
#define FBBDSIGNALERROR_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface FBBDSignalError : NSObject {
    NSInteger _errorCode;
    NSString *_errorName;
    NSString *_errorMessage;
    NSString *_errorStack;
}


@property (readonly, nonatomic) NSDictionary *errorDict;
@property (readonly, nonatomic) NSUInteger dataSize;


-(id)initWithErrorCode:(NSInteger)arg0 withErrorName:(id)arg1 withErrorMessage:(id)arg2 withErrorStack:(id)arg3 ;


@end


#endif