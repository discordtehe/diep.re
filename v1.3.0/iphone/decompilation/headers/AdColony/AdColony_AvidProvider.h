// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCOLONY_AVIDPROVIDER_H
#define ADCOLONY_AVIDPROVIDER_H


#import <Foundation/Foundation.h>

@protocol AdColony_AvidProviderDelegate;

@interface AdColony_AvidProvider : NSObject {
    NSString *_avid;
    BOOL _isLoading;
    NSURLSession *_session;
}


@property (readonly) NSString *avidScript;
@property (readonly) BOOL isReady;
@property (weak, nonatomic) NSObject<AdColony_AvidProviderDelegate> *delegate; // ivar: _delegate


-(void)loadAvid;
-(void)handleResponseWithData:(id)arg0 error:(id)arg1 ;
-(void)repeatLoading;
-(void)createSession;
+(id)getInstance;


@end


#endif