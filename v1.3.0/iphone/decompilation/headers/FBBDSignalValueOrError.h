// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBBDSIGNALVALUEORERROR_H
#define FBBDSIGNALVALUEORERROR_H


#import <Foundation/Foundation.h>

@class FBBDSignalValue;
@class FBBDSignalError;

@interface FBBDSignalValueOrError : NSObject {
    FBBDSignalValue *_signalValue;
    FBBDSignalError *_signalError;
    NSError *_error;
}


@property (readonly, nonatomic) NSUInteger dataSize;


-(id)initWithValue:(id)arg0 ;
-(id)initWithError:(id)arg0 ;
-(id)signalValue:(*id)arg0 ;
-(id)signalError:(*id)arg0 ;
-(BOOL)isSignalValue;
-(BOOL)isSignalError;
-(void)initError;


@end


#endif