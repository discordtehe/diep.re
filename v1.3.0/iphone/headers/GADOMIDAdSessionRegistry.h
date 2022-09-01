// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADOMIDADSESSIONREGISTRY_H
#define GADOMIDADSESSIONREGISTRY_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol GADOMIDAdSessionDelegate;

@interface GADOMIDAdSessionRegistry : NSObject <GADOMIDAdSessionDelegate>

 {
    NSPointerArray *_adSessions;
    NSMutableArray *_activeAdSessions;
    NSMutableArray *_observers;
}


@property (readonly, nonatomic) NSArray *adSessions;
@property (readonly, nonatomic) NSArray *activeAdSessions;
@property (readonly, nonatomic) NSArray *observers;
@property (readonly, nonatomic, getter=isActive) BOOL active;
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(void)addAdSession:(id)arg0 ;
-(void)removeAdSession:(id)arg0 ;
-(void)addStateObserver:(id)arg0 ;
-(void)adSessionDidStart:(id)arg0 ;
-(void)adSessionDidFinish:(id)arg0 ;
-(void)adSession:(id)arg0 didRegisterAdView:(id)arg1 ;
+(id)getInstance;


@end


#endif