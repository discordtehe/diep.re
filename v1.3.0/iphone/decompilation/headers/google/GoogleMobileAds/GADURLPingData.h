// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADURLPINGDATA_H
#define GADURLPINGDATA_H


#import <Foundation/Foundation.h>


@interface GADURLPingData : NSObject

@property (readonly, copy, nonatomic) NSURLRequest *URLRequest; // ivar: _URLRequest
@property (readonly, copy, nonatomic) id *completionBlock; // ivar: _completionBlock


-(id)initWithRequest:(id)arg0 completionBlock:(id)arg1 ;


@end


#endif