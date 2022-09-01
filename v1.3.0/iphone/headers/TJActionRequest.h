// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TJACTIONREQUEST_H
#define TJACTIONREQUEST_H


#import <Foundation/Foundation.h>


@interface TJActionRequest : NSObject

@property (nonatomic) int type; // ivar: _type
@property (copy, nonatomic) id *callback; // ivar: _callback
@property (copy, nonatomic) NSString *requestId; // ivar: _requestId
@property (copy, nonatomic) NSString *token; // ivar: _token


-(void)completed;
-(void)cancelled;


@end


#endif