// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLEGROUPOPERATION_H
#define VUNGLEGROUPOPERATION_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class VungleOperation;
@protocol OperationQueueDelegate;

@interface VungleGroupOperation : VungleOperation <OperationQueueDelegate>



@property (copy, nonatomic) NSBlockOperation *finishingOperation; // ivar: _finishingOperation
@property (retain, nonatomic) NSMutableSet *aggregatedErrors; // ivar: _aggregatedErrors
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(void)operation:(id)arg0 didFinishWithErrors:(id)arg1 ;
-(id)initWithOperations:(id)arg0 ;
-(void)cancel;
-(void)addOperation:(id)arg0 ;
-(void)addOperations:(id)arg0 ;
-(void)execute;
-(void)aggregateError:(id)arg0 ;
-(void)operationDidFinish:(id)arg0 withErrors:(id)arg1 ;
-(void)operationQueue:(id)arg0 willAddOperation:(id)arg1 ;
-(void)operationQueue:(id)arg0 operationDidFinish:(id)arg1 errors:(id)arg2 ;


@end


#endif