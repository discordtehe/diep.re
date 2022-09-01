// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCACTIONSMANAGER_H
#define MCACTIONSMANAGER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface MCActionsManager : NSObject {
    NSDictionary *mActionsColection;
}




-(id)init;
-(void)dealloc;
-(void)initWithActionsConfiguration:(id)arg0 ;
-(id)getActionForTag:(id)arg0 ;
-(id)actionFromDictionary:(id)arg0 ;
-(id)createInvocationforSelector:(SEL)arg0 andTarget:(id)arg1 ;
+(id)sharedMCActionsManager;
+(BOOL)isMCActionsManagerInitialized;
+(void)releaseSharedMCActionsManager;


@end


#endif