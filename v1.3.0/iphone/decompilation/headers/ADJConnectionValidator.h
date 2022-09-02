// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADJCONNECTIONVALIDATOR_H
#define ADJCONNECTIONVALIDATOR_H


#import <Foundation/Foundation.h>

@protocol NSURLSessionDelegate;

@interface ADJConnectionValidator : NSObject <NSURLSessionDelegate>



@property (nonatomic) int expectedTce; // ivar: _expectedTce
@property (nonatomic) BOOL didValidationHappen; // ivar: _didValidationHappen
@property (readonly, nonatomic) BOOL validationResult; // ivar: _validationResult
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(void)URLSession:(id)arg0 didReceiveChallenge:(id)arg1 completionHandler:(id)arg2 ;
-(id)getThumbprintAsSha1:(id)arg0 ;


@end


#endif