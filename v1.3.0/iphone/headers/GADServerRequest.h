// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADSERVERREQUEST_H
#define GADSERVERREQUEST_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class GADEventContext;
@class GADServerRequest;
@class GADTargeting;
@protocol GADEventContextSource;

@interface GADServerRequest : NSObject <GADEventContextSource>

 {
    GADEventContext *_context;
    NSObject<OS_dispatch_queue> *_lockQueue;
    NSDictionary *_RTBAdapters;
}


@property (retain, nonatomic) GADServerRequest *parentServerRequest; // ivar: _parentServerRequest
@property (retain, nonatomic) GADTargeting *targeting; // ivar: _targeting
@property (copy, nonatomic) NSURLRequest *URLRequest; // ivar: _URLRequest
@property (copy, nonatomic) NSURL *baseURL; // ivar: _baseURL
@property (readonly, nonatomic) NSDictionary *RTBAdapters;
@property (readonly, copy, nonatomic) NSDictionary *signals; // ivar: _signals
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (readonly, nonatomic) GADEventContext *context;


-(id)initWithContext:(id)arg0 ;
-(void)updateSignals;
-(BOOL)updateAdReferences:(*id)arg0 ;


@end


#endif