// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCPROMOINDIRECTMANAGER_H
#define MCPROMOINDIRECTMANAGER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface MCPromoIndirectManager : NSObject {
    NSDictionary *mIndirectCollection;
}




-(void)initWithIndirectConfiguration:(id)arg0 ;
-(id)getValueForKey:(id)arg0 forType:(id)arg1 ;
-(id)getValueForPath:(id)arg0 forType:(id)arg1 ;
-(id)getIndirectForKey:(id)arg0 ;
-(id)getIndirectForPath:(id)arg0 ;
-(id)getTemplateForKey:(id)arg0 ;
-(id)getTemplateForPath:(id)arg0 ;
-(id)createInvocationforSelector:(SEL)arg0 andTarget:(id)arg1 ;
+(id)sharedMCPromoIndirectManager;
+(void)releaseSharedMCPromoIndirectManager;


@end


#endif