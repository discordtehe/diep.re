// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADEVENTCONTEXT_H
#define GADEVENTCONTEXT_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class GADEventContext;

@interface GADEventContext : NSObject {
    NSObject<OS_dispatch_queue> *_lockQueue;
    NSMutableDictionary *_userInfo;
}


@property (readonly, nonatomic) GADEventContext *parent; // ivar: _parent
@property (readonly, nonatomic) NSString *identifier; // ivar: _identifier
@property (readonly, copy, nonatomic) NSString *componentName; // ivar: _componentName
@property (readonly, copy, nonatomic) NSDictionary *userInfo;


-(id)initWithParent:(id)arg0 component:(id)arg1 ;
-(id)init;
+(id)rootContext;


@end


#endif