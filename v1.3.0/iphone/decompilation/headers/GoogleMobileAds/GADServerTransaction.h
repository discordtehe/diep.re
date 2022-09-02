// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADSERVERTRANSACTION_H
#define GADSERVERTRANSACTION_H


#import <Foundation/Foundation.h>

@class GADServerRequest;
@class GADServerResponse;

@interface GADServerTransaction : NSObject {
    GADServerRequest *_serverRequest;
    GADServerResponse *_serverResponse;
}


@property (readonly, nonatomic) GADServerRequest *serverRequest;
@property (readonly, nonatomic) GADServerResponse *serverResponse;


-(id)initWithServerRequest:(id)arg0 serverResponse:(id)arg1 ;


@end


#endif