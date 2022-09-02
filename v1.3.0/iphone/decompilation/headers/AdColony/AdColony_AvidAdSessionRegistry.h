// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCOLONY_AVIDADSESSIONREGISTRY_H
#define ADCOLONY_AVIDADSESSIONREGISTRY_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol AdColony_InternalAvidAdSessionDelegate;

@interface AdColony_AvidAdSessionRegistry : NSObject <AdColony_InternalAvidAdSessionDelegate>

 {
    NSMutableDictionary *_avidAdSessions;
    NSMutableDictionary *_internalAvidAdSessions;
}


@property (nonatomic) NSInteger activeSessionCount; // ivar: _activeSessionCount
@property (readonly, nonatomic) BOOL isEmpty;
@property (readonly, nonatomic) BOOL hasActiveSessions;
@property (readonly, nonatomic) NSArray *avidAdSessions;
@property (readonly, nonatomic) NSArray *internalAvidAdSessions;
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(void)registerAvidAdSession:(id)arg0 withInternalAvidAdSession:(id)arg1 ;
-(void)postIsEmptyChanged;
-(void)adSessionDidEnd:(id)arg0 ;
-(void)adSessionBecomeActive:(id)arg0 ;
-(void)adSessionResignActive:(id)arg0 ;
-(void)postHasActiveSessionChanged;
-(id)findAvidAdSessionById:(id)arg0 ;
-(id)findInternalAvidAdSessionById:(id)arg0 ;
-(id)findInternalAvidAdSessionByView:(id)arg0 ;
+(id)getInstance;


@end


#endif